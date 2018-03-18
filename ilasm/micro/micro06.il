.assembly extern mscorlib {}

.assembly PrintNumber
{
	.ver 1:0:1:0
}
.module printNumber.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (int32 numero)

	ldstr "Digite um número de 1 a 5: "
	call void [mscorlib]System.Console::Write (string)
	call string [mscorlib]System.Console::ReadLine ()
	call int32 [mscorlib]System.Int32::Parse (string)
	stloc numero

	ldloc numero
	ldc.i4 1
	beq UM
	ldloc numero
	ldc.i4 2
	beq DOIS
	ldloc numero
	ldc.i4 3
	beq TRES
	ldloc numero
	ldc.i4 4
	beq QUATRO
	ldloc numero
	ldc.i4 5
	beq CINCO
	ldstr "Número Inválido!!!"
	call void [mscorlib]System.Console::WriteLine (string)
	br EndSwitch

	UM:
	ldstr "UM"
	call void [mscorlib]System.Console::WriteLine (string)
	br EndSwitch

	DOIS:
	ldstr "DOIS"
	call void [mscorlib]System.Console::WriteLine (string)
	br EndSwitch

	TRES:
	ldstr "TRES"
	call void [mscorlib]System.Console::WriteLine (string)
	br EndSwitch

	QUATRO:
	ldstr "QUATRO"
	call void [mscorlib]System.Console::WriteLine (string)
	br EndSwitch

	CINCO:
	ldstr "CINCO"
	call void [mscorlib]System.Console::WriteLine (string)
	br EndSwitch

	EndSwitch:
	ret
}

