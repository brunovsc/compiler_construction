int fatorial(int n){
	if(n <= 0){
		return 1;
	} else {
		int x = n - 1;
		int f = fatorial(x);
		return n * f;
	}
}

int main(){
	int numero;
	int fat;
	printf("Digite um número: ");
	scanf("%d", &numero);
	fat = fatorial(numero);
	printf("O fatorial de ");
	printf(numero);
	printf(" é ");
	printf(fat);
	return 1;
}
