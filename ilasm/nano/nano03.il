.assembly extern mscorlib {}

.assembly Assign
{
	.ver 1:0:1:0
}
.module assign.exe

.method static void main() cil managed
{
	.maxstack 1
	.entrypoint
	.locals init (int32 n)
	ldc.i4 1
	call void [mscorlib]System.Console::Write (int32)
	ret
}
