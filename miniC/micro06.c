int main(){
	int numero;
	printf("Digite um número de 1 a 5: ");
	scanf("%d", &numero);
	if(numero == 1) {
		printf("Um\n");
	} else {
		if(numero == 2) {
			printf("Dois\n");
		} else {
			if(numero == 3) {
				printf("Três\n");
			} else {
				if(numero == 4) {
					printf("Quatro\n");
				} else {
					if(numero == 5) {
						printf("Cinco\n");
					} else {
						printf("Número Inválido!!!\n");
					}
				}
			}
		}
	}
}
