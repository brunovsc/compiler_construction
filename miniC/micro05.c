int main(){
	char nome;
	char sexo;
	char newLine;
	int x;
	int h;
	int m;
	// a inicialização das variáveis h e m não estava presente no algoritmo em Portugol
	h = 0;
	m = 0;
	for(x = 1; x <= 5; x++){
		printf("Digite o nome: ");
		scanf("%s", &nome);
		scanf("%c", &newLine);
		printf("H - Homem ou M - Mulher: ");
		scanf("%c", &sexo);
		scanf("%c", &newLine);
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
	printf("Foram inseridos %d Homens\n", h);
	printf("Foram inseridos %d Mulheres\n", m);
}
