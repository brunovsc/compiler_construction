.assembly extern mscorlib {}

.assembly InformBigger
{
	.ver 1:0:1:0
}
.module informBigger.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (int32 num1, int32 num2)

	ldstr "Digite o primeiro número: "
	call void [mscorlib]System.Console::Write (string)
	call string [mscorlib]System.Console::ReadLine ()
	call int32 [mscorlib]System.Int32::Parse (string)
	stloc num1

	ldstr "Digite o segundo número: "
	call void [mscorlib]System.Console::Write (string)
	call string [mscorlib]System.Console::ReadLine ()
	call int32 [mscorlib]System.Int32::Parse (string)
	stloc num2

	ldloc num1
	ldloc num2
	ble ElseIf
		ldstr "O primeiro número "
		call void [mscorlib]System.Console::Write (string)
		ldloc num1
		call void [mscorlib]System.Console::Write (int32)
		ldstr " é maior que o segundo "
		call void [mscorlib]System.Console::Write (string)
		ldloc num2
		call void [mscorlib]System.Console::Write (int32)
		br EndIf
	ElseIf:
		ldstr "O segundo número "
		call void [mscorlib]System.Console::Write (string)
		ldloc num2
		call void [mscorlib]System.Console::Write (int32)
		ldstr " é maior que o primeiro "
		call void [mscorlib]System.Console::Write (string)
		ldloc num1
		call void [mscorlib]System.Console::Write (int32)
		br EndIf
	EndIf:
	ret
}

