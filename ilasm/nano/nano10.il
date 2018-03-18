.assembly extern mscorlib {}

.assembly CompareVariables
{
	.ver 1:0:1:0
}
.module compareVariables.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (int32 n, int32 m)
	ldc.i4 1
	stloc n
	ldc.i4 2
	stloc m
	ldloc n
	ldloc m
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

