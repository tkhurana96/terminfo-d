module terminfo.d.Loader;

import terminfo.d.Capabilities;

import std.traits : EnumMembers;
import std.stdio : File;
import std.process : environment;
import std.file : exists;
import std.exception : enforceEx;

class TerminfoException : Exception {
	@safe pure @nogc nothrow this(string msg,
		string file = __FILE__,
		size_t line = __LINE__,
		Throwable next = null) {
			super(msg, file, line, next);
	}
}
private alias enforceTi = enforceEx!TerminfoException;

@safe:
struct Terminfo {
	private {
		enum MAGIC = 0x11A;

		char[] m_name;
		char[][] m_aliases;
		bool[(EnumMembers!BOOL).length] m_boolopts;
		ushort[(EnumMembers!NUM).length] m_numopts;
		char[][(EnumMembers!STR).length] m_stropts;
	}

	@trusted this(string term) {
		string[] dirs;
		auto env = environment.get("TERMINFO");
		if(env !is null) {
			dirs ~= env;
		}

		dirs ~= environment["HOME"] ~ "/.terminfo";

		auto tenv = environment.get("TERMINFO_DIRS");
		if(tenv !is null) {
			dirs ~= tenv;
		}

		dirs ~= [
				"/etc/terminfo",
				"/lib/terminfo",
				"/usr/share/terminfo"
			];

		this(term, dirs);
	}

	this(in string term, in string[] searchdirs) {
		string fname;
		foreach(s; searchdirs) {
			if((s ~ "/" ~ term[0] ~ "/" ~ term).exists)
				fname = s ~ "/" ~ term[0] ~ "/" ~ term;
		}
		if(fname.length != 0) {
			this(File(fname, "rb"));
			return;
		}
		throw new TerminfoException(
			"Cannot find terminal \""~ term ~"\" in terminfo db");
	}

	this(File f) {
		ubyte[] data = f.rawRead(new ubyte[f.size]);
		this(data);
	}

	this(in ref ubyte[] data) {
		import std.algorithm : splitter;
		import std.array : array;

		size_t p;

		enforceTi((data.read!ushort(p) == this.MAGIC),
			"Wrong magic");

		ushort nameLen   = data.read!ushort(p);
		ushort boolLen   = data.read!ushort(p);
		ushort numLen    = data.read!ushort(p);
		ushort strLen    = data.read!ushort(p);
		ushort tableSize = data.read!ushort(p);

		this.m_aliases = data.readArray!(char[])(nameLen, p)[0..$-1]
			.splitter("|")
			.array;

		this.m_name = this.m_aliases[0];

		enforceTi((((data.length - p) >= (boolLen * bool.sizeof)) &&
			(boolLen <= this.m_boolopts.length)),
				"Invalid boolean section size");

		for(size_t i = 0; (i < boolLen) && (i < this.m_boolopts.length); ++i)
			this.m_boolopts[i] = data.read!bool(p);

		if(((nameLen + boolLen) % 2 ) && ((data.length - p) > 0))
			++p;

		enforceTi((((data.length - p) >= (numLen * ushort.sizeof)) &&
			(numLen <= this.m_numopts.length)),
				"Invalid number section size");

		for(size_t i = 0; (i < numLen) && (i < this.m_numopts.length); ++i)
			this.m_numopts[i] = data.read!ushort(p);

		ushort[] offsetTable = new ushort[strLen];
		enforceTi((((data.length - p) >= (strLen * ushort.sizeof)) &&
			(strLen <= this.m_stropts.length)),
				"Invalid offset table section size");

		for(size_t i = 0; (i < strLen) || (strLen > this.m_stropts.length); ++i)
			offsetTable[i] = data.read!ushort(p);

		foreach(i, offset; offsetTable) {
			if(offset != ushort.max)
				data.readString(
					p,
					offset,
					this.m_stropts[i]);
		}
	}

	string toString() {
		import std.format : formattedWrite;
		import std.array : appender, replace;

		auto a = appender!string;

		a.formattedWrite("Name: %s\n" ~
			"Aliases: %-(%s, %)\n",
				this.m_name,
				this.m_aliases);

		a.put("Booleans:\n");
		for(size_t i = 0; i < this.m_boolopts.length; ++i)
			a.formattedWrite("\t%s:\t%s\n",
				 BOOL_NAMES[i][2],
				 this.m_boolopts[i]);

		a.put("Numbers:\n");
		for(size_t i = 0; i < this.m_numopts.length; ++i)
			a.formattedWrite("\t%s:\t%s\n",
				NUM_NAMES[i][2],
				this.m_numopts[i]);

		a.put("Strings:\n");
		for(size_t i = 0; i < this.m_stropts.length; ++i) {
			if(this.m_stropts[i].length != 0)
				a.formattedWrite("\t%s:\t%s\n",
					STR_NAMES[i][2],
					this.m_stropts[i].replace("\033", "\\E"));
		}
		return a.data;
	}

	@property char[] Name() {
		return this.m_name;
	}

	@property char[][] Aliases() {
		return this.m_aliases;
	}

	@property bool[EnumMembers!BOOL.length] Boolean() {
		return this.m_boolopts;
	}

	@property bool Boolean(BOOL b) {
		return this.m_boolopts[b];
	}

	@property ushort[EnumMembers!NUM.length] Number() {
		return this.m_numopts;
	}

	@property ushort Number(NUM n) {
		return this.m_numopts[n];
	}

	@property char[][EnumMembers!STR.length] String() {
		return this.m_stropts;
	}

	@property char[] String(STR s) {
		return this.m_stropts[s];
	}

	@property auto get(E)(E cap)
	if(is(E == BOOL) ||
		is(E == NUM) ||
		is(E == STR)) {
		static if(is(E == STR)) {
			return this.String(cap);
		} else static if(is(E == NUM)) {
			return this.Number(cap);
		} else static if(is(E == BOOL)) {
			return this.Boolean(cap);
		}
	}

	void get(E, A...)(
		scope void delegate(const(char)[]) @safe nothrow writer,
		E cap,
		A args)
			if(is(E == BOOL) || is(E == NUM) || is(E == STR)) {
				static if(is(E == STR)) {
					static if(A.length != 0) {
						import terminfo.d.Format;
						FmtVar[9] params;
						foreach(i, ref a; args) {
							if(i > 9)
								break;
							params[i] = FmtVar(a);
						}
						writer.formattedWrite(this.m_stropts[cap], params);
					} else {
						writer(this.m_stropts[cap]);
					}
				} else static if(is(E == NUM) || is(E == BOOL)) {
					import std.conv : to;
					writer(this.get(cap).to!(char[]));
				}
	}
}

private @safe pure @nogc nothrow T read(T)(in ref ubyte[] u, ref size_t p)
in {
	assert((u.length - p) >= T.sizeof);
} body {
	import std.bitmanip : littleEndianToNative;

	ubyte[T.sizeof] buff = u[p..(p + T.sizeof)];
	T ret = littleEndianToNative!T(buff);
	p += T.sizeof;
	return ret;
}

private @safe pure nothrow T readArray(T)(in ref ubyte[] u,
	in size_t len,
	ref size_t p)
in {
	assert((u.length - p) >= len);
} body {
	import std.conv : to, ConvOverflowException;
	import std.traits : ForeachType;
	T ret = new T(len);
	try {
		for(size_t i = p; i < (p + len); ++i)
			ret[i-p] = u[i].to!(ForeachType!T);
	} catch (ConvOverflowException) {
		assert(false);
	}
	p += len;
	return ret;
}

private @safe nothrow void readString(in ref ubyte[] u,
	in size_t p,
	in size_t off,
	out char[] output) {
		import std.conv : to, ConvOverflowException;
		try {
			for(size_t i = (p + off); (i < u.length) && (u[i] != '\0'); ++i) {
				output ~= u[i].to!(char);
			}
		} catch (ConvOverflowException) {
			assert(false);
		}
}
