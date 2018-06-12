#include <stdio.h>

int verifica(int n){
	int res;
	if(n > 0){
		res = 2;
	} else {
		if(n < 0){
			res = 0;
		} else {
			res = 1;
		}
	}
	return res;
}

int main(){
	int numero;
	int x;
	printf("Digite um número: ");
	scanf("%d", &numero);
	x = verifica(numero);
	if(x == 2){
		printf("Número positivo\n");
	} else {
		if(x == 1){
			printf("Zero\n");
		} else {
			if(x == 0){
				printf("Número negativo\n");
			}
		}
	}
}
