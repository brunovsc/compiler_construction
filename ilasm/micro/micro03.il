.assembly extern mscorlib {}

.assembly InInterval
{
	.ver 1:0:1:0
}
.module inInterval.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (int32 numero)
	ldstr "Digite um número: "
	call void [mscorlib]System.Console::Write (string)
	call string [mscorlib]System.Console::ReadLine ()
	call int32 [mscorlib]System.Int32::Parse (string)
	stloc numero

	ldloc numero
	ldc.i4 100

	blt ElseIf1
		ldloc numero
		ldc.i4 200
		bgt ElseIf2
			ldstr "O número está no intervalo entre 100 e 200"
			call void [mscorlib]System.Console::WriteLine (string)
			br EndIf2
		ElseIf2:
			ldstr "O número não está no intervalo entre 100 e 200"	
			call void [mscorlib]System.Console::WriteLine (string)
			br EndIf2
		EndIf2:
		br EndIf1
	ElseIf1:
		ldstr "O número não está no intervalo entre 100 e 200"	
		call void [mscorlib]System.Console::WriteLine (string)
		br EndIf1
	EndIf1:
	ret
}

