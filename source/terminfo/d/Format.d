module terminfo.d.Format;

struct FmtVar {
	char[] ValueS;
	ptrdiff_t ValueN;

@safe pure @nogc nothrow:
	this(char[] s) {
		this.ValueS = s;
	}

	this(ptrdiff_t i) {
		this.ValueN = i;
	}

	this(bool b) {
		this.ValueN = b ? 1 : 0;
	}

	const bool isNumeric() {
		return this.ValueS.length == 0;
	}

	FmtVar opBinary(string op)(FmtVar b) {
		mixin("return FmtVar(this.ValueN " ~ op ~ " b.ValueN);");
	}

	FmtVar opUnary(string op)() {
		mixin("return FmtVar(" ~ op ~ "this.ValueN);");
	}

	const bool opEquals(FmtVar b) {
		return this.ValueN == b.ValueN;
	}

	const int opCmp(FmtVar b) {
		if(this.ValueN < b.ValueN) {
			return -1;
		} else if(this.ValueN > b.ValueN) {
			return 1;
		}
		assert(false);
	}

	const bool opCast(T : bool)() {
		return this.ValueN == 0 ? false : true;
	}
}

struct Flag {
	bool Hash,
		Space,
		Plus,
		Dash;
}

@safe nothrow void formattedWrite(
scope void delegate(const(char)[]) @safe nothrow writer,
in ref char[] fmt,
FmtVar[9] params) {
	import std.ascii : isDigit;

	FmtVar[123] stack;
	size_t sp;

	FmtVar[26] var_dyn;
	FmtVar[26] var_static;

	FmtVar pop() {
		if(sp) {
			return stack[--sp];
		} else {
			return FmtVar(0);
		}
	}

	void push(FmtVar v) {
		if(sp < stack.length)
			stack[sp++] = v;
	}

	size_t i;
	while(i < fmt.length) {
		if(fmt[i] != '%') {
			writer([fmt[i]]);
			++i;
			continue;
		}

		assert(i + 1 <= fmt.length);
		assert(fmt[i] == '%');
		++i;

		if(fmt[i].isDigit ||
			fmt[i] == ':' ||
			fmt[i] == ' ' ||
			fmt[i] == '#' ||
			fmt[i] == '.' ||
			fmt[i] == 'd' ||
			fmt[i] == 'o' ||
			fmt[i] == 'x' ||
			fmt[i] == 'X') {

			Flag f;
			size_t width = size_t.max - 1;
			size_t prec = size_t.max - 1;

			if(fmt[i] == ':')
				++i;
			for(; i + 1 < fmt.length; ++i) {
				switch(fmt[i]) {
				case '#':
					f.Hash = true;
					continue;
				case ' ':
					f.Space = true;
					continue;
				case '+':
					f.Plus = true;
					continue;
				case '-':
					f.Dash = true;
					continue;
				default:
					break;
				}
				break;
			}

			if(fmt[i].isDigit) {
				width = fmt.parseNumber(i);
				assert(i + 1 <= fmt.length);
			}

			if(fmt[i] == '.' && fmt[i + 1].isDigit) {
				++i;
				prec = fmt.parseNumber(i);
				assert(i + 1 <= fmt.length);
			}
			writer.formatValue(fmt[i], pop(), f, width, prec);
			++i;
			continue;
		}

		final switch(fmt[i]) {
		case '%':
			writer(['%']);
			break;
		case 'p':
			assert(i + 1 <= fmt.length);
			push(params[fmt[i+1] - '1']);
			++i;
			break;
		case 's': case 'c':
			writer.formatValue(fmt[i], pop());
			break;
		case 'g':
			assert(i + 1 <= fmt.length);
			++i;
			if(fmt[i] >= 'A' && fmt[i] <= 'Z') {
				push(var_dyn[fmt[i] - 'A']);
			} else if(fmt[i] >= 'a' && fmt[i] <= 'z') {
				push(var_static[fmt[i] - 'a']);
			}
			break;
		case 'P':
			assert(i + 1 <= fmt.length);
			++i;
			if(fmt[i] >= 'A' && fmt[i] <= 'Z') {
				var_dyn[fmt[i] - 'A'] = pop();
			} else if(fmt[i] >= 'a' && fmt[i] <= 'z') {
				var_static[fmt[i] - 'a'] = pop();
			}
			break;
		case '\'':
			assert(i + 2 <= fmt.length);
			assert(fmt[i+2] == '\'');
			++i;
			push(FmtVar([fmt[i]]));
			++i;
			break;
		case '{':
			assert(i + 2 <= fmt.length);
			++i;
			push(FmtVar(fmt.parseNumber(i)));
			assert(fmt[i] == '}');
			break;
		case 'l':
			auto v = pop();
			push(v.isNumeric ? FmtVar(0) : FmtVar(v.ValueS.length));
			break;
		case '+':
			push(pop() + pop());
			break;
		case '-':
			push(pop() - pop());
			break;
		case '*':
			push(pop() * pop());
			break;
		case '/':
			push(pop() / pop());
			break;
		case 'm':
			push(pop() % pop());
			break;
		case '&':
			push(pop() & pop());
			break;
		case '|':
			push(pop() | pop());
			break;
		case '^':
			push(pop() ^ pop());
			break;
		case '=':
			push(FmtVar(pop() == pop()));
			break;
		case '>':
			push(FmtVar(pop() > pop()));
			break;
		case '<':
			push(FmtVar(pop() < pop()));
			break;
		case 'A':
			push(FmtVar(pop() && pop()));
			break;
		case 'O':
			push(FmtVar(pop() || pop()));
			break;
		case '!':
			push(FmtVar(!pop()));
			break;
		case '~':
			push(~pop());
			break;
		case 'i':
			++params[0];
			++params[1];
			break;
		case '?':
			break;
		case ';':
			break;
		case 't':
			if(!pop()) {
				++i;
				size_t nesting;
				for(;i < fmt.length; ++i) {
					if(fmt[i] == '%') {
						++i;
						if(fmt[i] == '?') {
							++i;
							++nesting;
						} else if(fmt[i] == ';') {
							if(!nesting) {
								++i;
								break;
							}
							++i;
							--nesting;
						} else if(fmt[i] == 'e' && !nesting) {
							++i;
							break;
						} else {
							--i;
							break;
						}
					}
				}
			}
			continue;
		case 'e':
			++i;
			size_t nesting = 0;
			for(;i < fmt.length; ++i) {
				if(fmt[i] == '%') {
					++i;
					if(fmt[i] == '?') {
						++i;
						++nesting;
					} else if(fmt[i] == ';') {
						if(!nesting) {
							++i;
							break;
						}
						++i;
						--nesting;
					} else {
						--i;
						break;
					}
				}
			}
			continue;
		}
		++i;
	}
}

version(unittest) {
	private string testFmt(string fmt, FmtVar[9] args) {
		import std.functional : toDelegate;
		import std.conv : to;
		char[] result;
		const(char[]) b = fmt.to!(char[]);
		formattedWrite((const(char)[] i) { result ~= i;}, b, args);
		return result.to!string;
	}
}

unittest {
	FmtVar[9] args = [
		FmtVar("It's terminfo-d".dup),
		FmtVar(42),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0)
	];
	assert("%p1%l%p2%-%d".testFmt(args) == "27");
}

unittest {
	import std.array : appender;
	auto a = appender!(char[])();
	char[] fmt = "%p1%p2%p3%p4%p5%p6%p7%p8%p9" ~
		"%/%c," ~ // -67890 / 67890 = -1
		"%/%p1%*%3.3d," ~ // (12345 / -12345) * -42 = 42
		"%{65536}%m%:+#- o," ~ // 65536 % 1024 = 0
		"%%%#X," ~
		"%%%#x,".dup;
	FmtVar[9] args = [
		FmtVar(-42),
		FmtVar(42),
		FmtVar(1337),
		FmtVar(-1337),
		FmtVar(1024),
		FmtVar(-12345),
		FmtVar(12345),
		FmtVar(67890),
		FmtVar(-67890)];
	formattedWrite((const(char)[] i) {a.put(i);}, fmt, args);
	assert(a.data == "-1,042,0,%0XFFFFFFFFFFFFFAC7,%0x539,");
}

unittest {
	FmtVar[9] args = [
		FmtVar("1337".dup),
		FmtVar(42),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0)
	];
	assert("%+%1.1c".testFmt(args) == "0");
	assert("%'b'%s".testFmt(args) == "b");
	assert("%p1%PA%p2%Pz%gz%gA%s".testFmt(args) == "1337");
}

unittest {
	FmtVar[9] args = [
		FmtVar(1337),
		FmtVar(42),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0)
	];
	assert("%:+d".testFmt(args) == "+0");
	assert("%p1%:-5d".testFmt(args) == "1337 ");
	assert("%p2% d".testFmt(args) == " 42");
	assert("%p2%#o".testFmt(args) == "052");
	assert("%p2%3d".testFmt(args) == " 42");
}

unittest {
	FmtVar[9] args = [
		FmtVar(0x110011),
		FmtVar(0x010010),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0)
	];
	assert("%p1%p2%&%#x".testFmt(args) == "0x10010");
	assert("%p1%p2%|%#x".testFmt(args) == "0x110011");
	assert("%p1%p2%^%#x".testFmt(args) == "0x100001");
}

private @safe nothrow void formatValue(
	scope void delegate(const(char)[]) @safe nothrow writer,
	in char spec,
	in FmtVar val,
	in Flag f = Flag(),
	in size_t width = size_t.max - 1,
	in size_t prec = size_t.max - 1
	) {
		import std.traits : Unsigned, Unqual;
		if(!val.isNumeric) {
			assert(spec == 's' || spec == 'c');
			writer(val.ValueS.dup);
			return;
		}


		ubyte b;
		final switch(spec) {
		case 'x': case 'X':
			b = 16;
			break;
		case 'o':
			b = 8;
			break;
		case 's': case 'd': case 'c':
			b = 10;
			break;
		}
		immutable base = b;

		immutable bool negative = (base == 10) && val.isNumeric && (val.ValueN < 0);

		Unqual!(Unsigned!(typeof(val.ValueN))) arg;
		if(negative) {
			arg = cast(typeof(arg)) -val.ValueN;
		} else {
			arg = cast(typeof(arg)) val.ValueN;
		}

		arg = arg & Unqual!(Unsigned!(typeof(val.ValueN))).max;

		char[64] buffer = void; // 64 bits in base 2 at most
		char[64] digits = void;
		size_t len = 0;

		if(arg < base && base <= 10 && arg) {
			buffer[0] = cast(char)(arg + '0');
			digits[0..1] = buffer[0 .. 1];
			len = 1;
		} else {
			size_t i = buffer.length;
			while(arg) {
				--i;
				char c = cast(char) (arg % base);
				arg /= base;
				if(c < 10) {
					buffer[i] = cast(char)(c + '0');
				} else {
					buffer[i] = cast(char)(c +
						(spec == 'x' ? 'a' - 10 : 'A' - 10));
				}
			}
			len = buffer.length - i;
			digits[0..len] = buffer[i .. $]; // got the digits without the sign
		}

		immutable precision = (prec == size_t.max - 1) ? 1 : prec;

		char padChar = 0;
		if(!f.Dash)
			padChar = ' ';

		// Compute prefix1 and prefix2
		char prefix1 = 0;
		char prefix2 = 0;
		if(base == 10) {
			if(negative) {
				prefix1 = '-';
			} else if(f.Plus) {
				prefix1 = '+';
			} else if(f.Space) {
				prefix1 = ' ';
			}
		} else if(base == 16 && f.Hash && len) {
			prefix1 = '0';
			prefix2 = spec == 'x' ? 'x' : 'X';
		} else if (base == 8 &&
			f.Hash &&
			(precision <= 1 || precision <= len) &&
			len > 0) {
				prefix1 = '0';
		}

		size_t zerofill = precision > len ? precision - len : 0;
		size_t leftpad = 0;
		size_t rightpad = 0;

		immutable ptrdiff_t spacesToPrint = width -
			((prefix1 != 0) + (prefix2 != 0) + zerofill + len);
		if(spacesToPrint > 0) {
			if(padChar) {
				leftpad = spacesToPrint;
			} else {
				rightpad = spacesToPrint;
			}
		}

		// Print
		foreach(k; 0..leftpad)
			writer([' ']);

		if(prefix1)
			writer([prefix1]);
		if(prefix2)
			writer([prefix2]);

		foreach(k; 0..zerofill)
			writer(['0']);

		writer(digits[0..len]);

		foreach(k; 0..rightpad)
			writer([' ']);
}

private @safe pure @nogc nothrow size_t parseNumber(in ref char[] input, ref size_t index) {
	size_t output;
	while(index < input.length) {
		if(input[index] >= '0' && input[index] <= '9') {
			output = output * 10 + (input[index] - '0');
		} else {
			break;
		}
		++index;
	}
	return output;
}
