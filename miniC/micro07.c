int main(){
	int programa, numero;
	char opc;
	programa = 1;
	while(programa = 1){
		printf("Digite um número: ");
		scanf("%d", &numero);
		if(numero > 0){
			printf("Positivo\n");
		} else {
			if(numero == 0){
				printf("O número é igual a 0\n");
			} else {
				printf("Negativo\n");
			}
		}
		printf("Deseja finalizar? (S/N) ");
		scanf("%c", &opc);
		if(opc == 'S'){
			programa = 0;
		}
	}
}
