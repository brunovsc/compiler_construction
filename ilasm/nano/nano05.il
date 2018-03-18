.assembly extern mscorlib {}

.assembly AssignAndPrint
{
	.ver 1:0:1:0
}
.module assignAndPrint.exe

.method static void main() cil managed
{
	.maxstack 1
	.entrypoint
	.locals init (int32 n)
	ldc.i4 2
	call void [mscorlib]System.Console::Write (int32)
	ret
}
