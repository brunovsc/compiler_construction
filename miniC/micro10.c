int fatorial(int n);

int main(){
	int numero, fat;
	printf("Digite um número: ");
	scanf("%d", &numero);
	fat = fatorial(numero);
	printf("O fatorial de ");
	printf("%d", numero);
	printf(" é ");
	printf("%d", fat);
}

int fatorial(int n){
	if(n <= 0){
		return 1;
	} else {
		return n * fatorial(n-1);
	}
}
