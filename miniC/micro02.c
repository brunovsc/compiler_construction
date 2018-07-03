int main(){
	int num1;
	printf("Digite o primeiro número: ");
	scanf("%d", &num1);
	printf("Digite o segundo número: ");
	scanf("%d", &num2);
	if(num1 > num2){
		printf("O primeiro número ");
		printf(num1);
		printf(" é maior que o segundo ");
		printf(num2);
	} else {
		printf("O segundo número ");
		printf(num2);
		printf(" é maior que o primeiro ");
		printf(num1);
	}
}
