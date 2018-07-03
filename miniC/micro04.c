int main(){
	int x, num, intervalo;
	
	intervalo = 0;
	for(x=0;x<5;x + 1){
		printf("Digite um número: ");
		scanf("%d", &num);
		if(num > 9){
			if(num < 149){
				intervalo = intervalo + 1;
			}
		}
	}
	printf("Ao total, foram digitados ");
	printf(intervalo);
	printf(" números no intervalo entre 10 e 150\n");
	return 1;
}
