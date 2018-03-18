.assembly extern mscorlib {}

.assembly CelsiusFahrenheit
{
	.ver 1:0:1:0
}
.module celsiusFahrenheit.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (float32 cel, float32 far)
	ldstr "   Tabela de conversão: Celsius -> Fahrenheit"
	call void [mscorlib]System.Console::WriteLine (string)
	ldstr "Digite a temperatura em Celsius: "
	call void [mscorlib]System.Console::Write (string)
	call string [mscorlib]System.Console::ReadLine ()
	call float32 [mscorlib]System.Single::Parse (string)
	stloc cel
	ldc.r4 9
	ldloc cel
	mul
	ldc.r4 160
	add
	ldc.r4 5
	div
	stloc far
	ldstr "A nova temperatura é: "
	call void [mscorlib]System.Console::Write (string)
	ldloc far
	call void [mscorlib]System.Console::Write (float64)
	ldstr " F"
	call void [mscorlib]System.Console::WriteLine (string)	
	ret
}

