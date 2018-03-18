.assembly extern mscorlib {}

.assembly SubAndPrint
{
	.ver 1:0:1:0
}
.module subAndPrint.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (int32 n)
	ldc.i4 1
	ldc.i4 2
	sub
	call void [mscorlib]System.Console::Write (int32)
	ret
}
