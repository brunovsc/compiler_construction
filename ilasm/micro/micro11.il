.assembly extern mscorlib {}

.assembly Function
{
	.ver 1:0:1:0
}
.module function.exe

.method static void main() cil managed
{
	.maxstack 2
	.entrypoint
	.locals init (int32 numero, int32 x)

	ldstr "Digite um número: "
	call void [mscorlib]System.Console::Write (string)
	call string [mscorlib]System.Console::ReadLine ()
	call int32 [mscorlib]System.Int32::Parse (string)
	stloc numero

	ldloc numero
	call int32 verifica(int32)
	stloc x

	ldloc x
	ldc.i4 1
	beq IF1
		ldloc x
		ldc.i4 0
		beq IF2
			ldstr "Número negativo"
			call void [mscorlib]System.Console::WriteLine (string)
			br END
		IF2:		
			ldstr "Zero"
			call void [mscorlib]System.Console::WriteLine (string)
			br END
	IF1:
		ldstr "Número positivo"
		call void [mscorlib]System.Console::WriteLine (string)
		br END

	END:
	ret
}

.method public static int32 verifica (int32) cil managed
{
	.maxstack 2
	
	.locals init (int32 res)
	
	ldarg.0
	ldc.i4 0
	ble ELSE
		ldc.i4 1
		stloc res
		br END
	ELSE:
		ldarg.0
		ldc.i4 0
		bge ELSE2
			ldc.i4 -1
			stloc res
			br END
		ELSE2:
			ldc.i4 0
			stloc res
			br END
	END:
	ldloc res
	ret
}

