int main(){
	char nome;
	char newLine;
	int sexo;
	int x, h, m;
	h = 0;
	m = 0;
	for(x = 0; x < 5; x + 1){
		printf("Digite o nome: ");
		scanf("%s", &nome);
		printf("0 - Homem ou 1 - Mulher: ");
		scanf("%d", &sexo);
		if(sexo == 0){
			h = h + 1;
		}
		if(sexo == 1){
			m = m + 1;
		}
	}
	printf("Foram inseridos ");
	printf(h);
	printf(" Homens\n");
	printf("Foram inseridos \n");
	printf(m);
	printf(" Mulheres\n");
	return 1;
}


main();