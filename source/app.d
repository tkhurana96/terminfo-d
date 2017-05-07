import std.stdio;
import terminfo.d;
import terminfo.d.Format;
void main() {
	string fmt(string fmt, FmtVar[9] args) {
		import std.functional : toDelegate;
		import std.conv : to;
		char[] result;
		const(char[]) b = fmt.to!(char[]);
		formattedWrite((const(char)[] i) { result ~= i;}, b, args);
		return result.to!string;
	}

	FmtVar[9] args = [
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0),
		FmtVar(0)
	];
	writeln(fmt("%?%{0}%t1%e%{0}%t2%e%{1}%tyay%e%;", args));
}
