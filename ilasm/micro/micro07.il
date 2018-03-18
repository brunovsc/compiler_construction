.assembly extern mscorlib {}

.assembly PositiveNegative
{
	.ver 1:0:1:0
}
.module positiveNegative.exe

.method static void main() cil managed
{
	.maxstack 3
	.entrypoint
	.locals init (int32 numero, int32 programa, char opc)

	ldc.i4 1
	stloc programa

	StartWhile:
		ldloc programa
		ldc.i4 1	
		bne.un ExitWhile

		ldstr "Digite um número: "
		call void [mscorlib]System.Console::Write (string)
		call string [mscorlib]System.Console::ReadLine ()
		call int32 [mscorlib]System.Int32::Parse (string)
		stloc numero

		ldloc numero
		ldc.i4 0
		ble ElseIf1
			ldstr "Positivo"
			call void [mscorlib]System.Console::WriteLine (string)
			br EndIf1
		ElseIf1:
			ldloc numero
			ldc.i4 0
			beq If2
				ldstr "Negativo"
				call void [mscorlib]System.Console::WriteLine (string)
				br EndIf2
			If2:
				ldstr "O número é igual a 0"
				call void [mscorlib]System.Console::WriteLine (string)
				br EndIf2
			EndIf2:
			br EndIf1
		EndIf1:

		ldstr "Deseja finalizar? (S/N) "		
		call void [mscorlib]System.Console::Write (string)
		call string [mscorlib]System.Console::ReadLine ()
		call char [mscorlib]System.Convert::ToChar (string)
		stloc opc

		ldloc opc
		ldc.i4.s 0x53
		bne.un EndIf
			ldc.i4 0
			stloc programa
		EndIf:
		br StartWhile
	ExitWhile:
	ret
}

