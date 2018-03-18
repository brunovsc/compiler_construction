.assembly extern mscorlib {}

.assembly WhileIf
{
	.ver 1:0:1:0
}
.module whileIf.exe

.method static void main() cil managed
{
	.maxstack 3
	.entrypoint
	.locals init (int32 n, int32 m, int32 x)
	ldc.i4 1
	stloc n
	ldc.i4 2
	stloc m
	ldc.i4 5
	stloc x

	StartWhile:
	ldloc x
	ldloc n
	ble ExitWhile
	
		ldloc n
		ldloc m
		bne.un ElseIf
			ldloc n
			call void [mscorlib]System.Console::Write (int32)
			br EndIf
		ElseIf:
			ldc.i4 0
			call void [mscorlib]System.Console::Write (int32)
			br EndIf
		EndIf:
		ldloc x
		ldc.i4 1
		sub
		stloc x
		br StartWhile

	ExitWhile:
	ret
}

