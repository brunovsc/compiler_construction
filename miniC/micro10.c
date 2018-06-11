#include <stdio.h>

int fatorial(int n){
	if(n <= 0){
		return 1;
	} else {
		return n * fatorial(n-1);
	}
}

int main(){
	int numero;
	int fat;
	printf("Digite um número: ");
	scanf("%d", &numero);
	fat = fatoria(numero);
	printf("O fatorial de ");
	printf("%d", numero);
	printf(" é ");
	printf("%d\n", fat);
}
