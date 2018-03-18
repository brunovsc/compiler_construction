.assembly extern mscorlib {}

.assembly AssignIfElse
{
	.ver 1:0:1:0
}
.module assignIfElse.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (int32 n)
	ldc.i4 1
	ldc.i4 1
	add
	ldc.i4 2
	div
	stloc n
	ldloc n
	ldc.i4 1
	bne.un Different
		ldloc n
		call void [mscorlib]System.Console::Write (int32)
		br EndIf
Different:
		ldc.i4 0
		call void [mscorlib]System.Console::Write (int32)
EndIf:
	ret
}

