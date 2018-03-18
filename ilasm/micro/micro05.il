.assembly extern mscorlib {}

.assembly CountGender
{
	.ver 1:0:1:0
}
.module countGender.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (string nome, char sexo, int32 x, int32 h, int32 m)
	ldc.i4 0
	stloc h
	ldc.i4 0
	stloc m

	ldc.i4 1
	stloc x
	StartFor:
		ldloc x
		ldc.i4 5
		bgt EndFor
		
		ldstr "Digite o nome: "
		call void [mscorlib]System.Console::Write (string)
		call string [mscorlib]System.Console::ReadLine ()
		stloc nome
		ldstr "H - Homem ou M - Mulher: "
		call void [mscorlib]System.Console::Write (string)
		call string [mscorlib]System.Console::ReadLine ()
		call char [mscorlib]System.Convert::ToChar (string)
		stloc sexo

		ldloc sexo		
		ldc.i4.s 0x48 // char H in hexadecimal
		beq HOMEM
		ldloc sexo
		ldc.i4.s 0x4D // char M in hexadecimal
		beq MULHER
		ldstr "Sexo só pode ser H ou M"
		call void [mscorlib]System.Console::WriteLine (string)
		br ExitSwitch

	HOMEM:
		ldloc h
		ldc.i4 1
		add
		stloc h
		br ExitSwitch
	MULHER:
		ldloc m
		ldc.i4 1
		add
		stloc m
		br ExitSwitch

	ExitSwitch:
		ldloc x
		ldc.i4 1
		add
		stloc x
		br StartFor

	EndFor:
	ldstr "Foram inseridos "
	call void [mscorlib]System.Console::Write (string)
	ldloc h
	call void [mscorlib]System.Console::Write (int32)
	ldstr " Homens"
	call void [mscorlib]System.Console::WriteLine (string)
	ldstr "Foram inseridos "
	call void [mscorlib]System.Console::Write (string)
	ldloc m
	call void [mscorlib]System.Console::Write (int32)
	ldstr " Mulheres"
	call void [mscorlib]System.Console::WriteLine (string)
	ret
}

