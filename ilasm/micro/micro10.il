.assembly extern mscorlib {}

.assembly WhileIf
{
	.ver 1:0:1:0
}
.module whileIf.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (int32 numero, int32 fat)

	ldstr "Digite um número: "
	call void [mscorlib]System.Console::Write (string)
	call string [mscorlib]System.Console::ReadLine ()
	call int32 [mscorlib]System.Int32::Parse (string)
	stloc numero

	ldloc numero
	call int32 fatorial(int32)
	stloc fat

	ldstr "O fatorial de "
	call void [mscorlib]System.Console::Write (string)
	ldloc numero
	call void [mscorlib]System.Console::Write (int32)
	ldstr " é "
	call void [mscorlib]System.Console::Write (string)
	ldloc fat
	call void [mscorlib]System.Console::WriteLine (int32)
	ret
}

.method public static int32 fatorial (int32) cil managed
{
	.maxstack 2
	
	ldarg.0
	ldc.i4 0
	bgt ELSE
		ldc.i4 1
		br ENDIF
	ELSE:
		ldarg.0
		ldc.i4 1
		sub
		call int32 fatorial(int32)
		ldarg.0
		mul
		br ENDIF
	ENDIF:
	ret		
}

