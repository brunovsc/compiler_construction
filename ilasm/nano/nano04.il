.assembly extern mscorlib {}

.assembly Add
{
	.ver 1:0:1:0
}
.module add.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (int32 n)
	ldc.i4 1
	ldc.i4 2
	add
	call void [mscorlib]System.Console::Write (int32)
	ret
}
