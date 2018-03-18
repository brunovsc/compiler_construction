.assembly extern mscorlib {}

.assembly CountInInterval
{
	.ver 1:0:1:0
}
.module countInInterval.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (int32 x, int32 num, int32 intervalo)
	ldc.i4 0
	stloc intervalo

	ldc.i4 1
	stloc x
	StartFor:
		ldloc x
		ldc.i4 5
		bgt EndFor
		
		ldstr "Digite um número: "
		call void [mscorlib]System.Console::Write (string)
		call string [mscorlib]System.Console::ReadLine ()
		call int32 [mscorlib]System.Int32::Parse (string)
		stloc num

		ldloc num
		ldc.i4 10
		blt EndIf1
			ldloc num
			ldc.i4 150
			bgt EndIf2
				ldloc intervalo
				ldc.i4 1
				add
				stloc intervalo
				br EndIf2
			EndIf2:
			br EndIf1
		EndIf1:
		ldloc x
		ldc.i4 1
		add
		stloc x
		br StartFor
	EndFor:
	ldstr "Ao total, foram digitados "
	call void [mscorlib]System.Console::Write (string)
	ldloc intervalo
	call void [mscorlib]System.Console::Write (int32)
	ldstr " números no intervalo entre 10 e 150"
	call void [mscorlib]System.Console::WriteLine (string)
	ret
}

