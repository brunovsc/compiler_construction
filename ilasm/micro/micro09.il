.assembly extern mscorlib {}

.assembly NewPrice
{
	.ver 1:0:1:0
}
.module newPrice.exe

.method static void main() cil managed
{
	.maxstack 4
	.entrypoint
	.locals init (float32 preco, float32 venda, float32 novo_preco)

	ldc.r4 0.0
	stloc novo_preco

	ldstr "Digite o preço: "
	call void [mscorlib]System.Console::Write (string)
	call string [mscorlib]System.Console::ReadLine ()
	call float32 [mscorlib]System.Single::Parse (string)
	stloc preco

	ldstr "Digite a venda: "
	call void [mscorlib]System.Console::Write (string)
	call string [mscorlib]System.Console::ReadLine ()
	call float32 [mscorlib]System.Single::Parse (string)
	stloc venda

	ldloc venda
	ldc.r4 500
	blt NEWPRICE1

	ldloc preco
	ldc.r4 30
	blt NEWPRICE1

	// SecondIf
	// FirstCase
	ldloc venda
	ldc.r4 500
	blt SecondCase

	ldloc venda
	ldc.r4 1200
	bge SecondCase

	br NEWPRICE2

	SecondCase:
	ldloc preco
	ldc.r4 30
	blt SecondElse

	ldloc preco
	ldc.r4 80
	bge SecondElse

	br NEWPRICE2

	SecondElse:
	ldloc venda
	ldc.r4 1200
	bge NEWPRICE3

	ldloc preco
	ldc.r4 80
	bge NEWPRICE3

	br AfterNewPrice

NEWPRICE1:
	ldc.r4 10	
	ldc.r4 100
	div
	ldloc preco
	mul
	ldloc preco
	add
	stloc novo_preco
	br AfterNewPrice

NEWPRICE2:	
	ldc.r4 15
	ldc.r4 100
	div
	ldloc preco
	mul
	ldloc preco
	add
	stloc novo_preco
	br AfterNewPrice	

NEWPRICE3:
	ldloc preco
	ldc.r4 20
	ldc.r4 100
	div
	ldloc preco
	mul
	sub
	stloc novo_preco		
	br AfterNewPrice

	AfterNewPrice:
	ldstr "O novo preço é "
	call void [mscorlib]System.Console::Write (string)
	ldloc novo_preco
	call void [mscorlib]System.Console::WriteLine (float32)
	ret
}

