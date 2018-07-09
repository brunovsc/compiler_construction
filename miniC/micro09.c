int main(){
    float preco;
	float venda;
	float novo_preco;
    printf("Digite o preço: ");
	scanf("%f", &preco);
	printf("Digite a venda: ");
	scanf("%f", &venda);
	if(venda < 500.0 || preco < 30.0){
		novo_preco = preco + (10.0/100.0 * preco);
	} else {
		if((venda > 499.0 && venda < 1200.0) || (preco > 29.0 && preco < 80.0)){
			novo_preco = preco + (15.0/100.0 * preco);
		} else {
			if(venda > 1199.0 || preco > 79.0){
				novo_preco = preco - (20.0/100.0 * preco);
			}
		}
	}
	printf("O novo preço é ");
	printf(novo_preco);
}


main();