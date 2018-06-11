#include <stdio.h>

int main(){
    float preco;
	float venda;
	float novo_preco;
    printf("Digite o preço: ");
	scanf("%f", &preco);
	printf("Digite a venda: ");
	scanf("%f", &venda);
	if(venda < 500 || preco < 30){
		novo_preco = preco + (10.0/100 * preco);
	} else {
		if((venda >= 500 && venda < 1200) || (preco >= 30 && preco < 80)){
			novo_preco = preco + (15.0/100 * preco);
		} else {
			if(venda >= 1200 || preco >= 80){
				novo_preco = preco - (20.0/100 * preco);
			}
		}
	}
	printf("O novo preço é %f\n", novo_preco);
}
