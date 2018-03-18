int main(){
	char nome[15];
	char sexo;
	int x, h, m;
	// a inicialização das variáveis h e m não estava presente no algoritmo em Portugol
	h = 0;
	m = 0;
	for(x = 1; x <= 5; x++){
		printf("Digite o nome: ");
		scanf("%s\n", nome);
		printf("H - Homem ou M - Mulher: ");
		scanf("%c\n", &sexo);
		switch(sexo){
			case 'H':
				h = h + 1;
				break;
			case 'M':
				m = m + 1;
				break;
			default:
				printf("Sexo só pode ser H ou M!\n");
		}
	}
	printf("Foram inseridos %d Homens", h);
	printf("Foram inseridos %d Mulheres", m);
}
