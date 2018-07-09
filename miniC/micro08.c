int main(){
	int numero;
	numero = 1;
	while(numero != 0){
		printf("Digite um número: ");
		scanf("%d", &numero);
		if(numero > 10){
			printf("O número ");
			printf(numero);
			printf(" é maior que 10\n");
		} else {
			printf("O número ");
			printf(" é menor que 10\n");
		}
	}
}


main();