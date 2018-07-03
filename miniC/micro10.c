int fatorial(int n){
	int x, f;
	if(n < 1){
		return 1;
	} else {
		x = n - 1;
		f = fatorial(x);
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
