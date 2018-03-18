.assembly extern mscorlib {}

.assembly IfEqual
{
	.ver 1:0:1:0
}
.module ifEqual.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (int32 n)
	ldc.i4 1
	stloc n
	ldloc n
	ldc.i4 1
	bne.un Different
		ldloc n
		call void [mscorlib]System.Console::Write (int32)
		br EndIf
Different:
EndIf:
	ret
}

