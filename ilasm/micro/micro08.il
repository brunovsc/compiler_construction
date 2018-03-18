.assembly extern mscorlib {}

.assembly Compare10
{
	.ver 1:0:1:0
}
.module compare10.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (int32 numero)
	ldc.i4 1
	stloc numero

	StartWhile:
	ldloc numero
	ldc.i4 0
	beq ExitWhile
	
		ldstr "Digite um número: "
		call void [mscorlib]System.Console::Write (string)
		call string [mscorlib]System.Console::ReadLine ()
		call int32 [mscorlib]System.Int32::Parse (string)
		stloc numero

		ldloc numero
		ldc.i4 10
		ble ElseIf
			ldstr "O número "
			call void [mscorlib]System.Console::Write (string)
			ldloc numero
			call void [mscorlib]System.Console::Write (int32)
			ldstr " é maior que 10"
			call void [mscorlib]System.Console::WriteLine (string)
			br EndIf
		ElseIf:
			ldstr "O número "
			call void [mscorlib]System.Console::Write (string)
			ldloc numero
			call void [mscorlib]System.Console::Write (int32)
			ldstr " é menor que 10"
			call void [mscorlib]System.Console::WriteLine (string)
			br EndIf
		EndIf:
		br StartWhile
	ExitWhile:
	ret
}

