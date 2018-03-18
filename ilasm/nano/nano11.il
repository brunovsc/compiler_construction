.assembly extern mscorlib {}

.assembly While
{
	.ver 1:0:1:0
}
.module while.exe

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
	add
	stloc n
	ldloc n
	call void [mscorlib]System.Console::Write (int32)
	br StartWhile

ExitWhile:
	ret
}

