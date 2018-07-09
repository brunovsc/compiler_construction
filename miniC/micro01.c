int main(){
	float cel;
	float far;
	printf(" Tabela de conversão: Celsius -> Fahrenheit\n");
	printf("Digite a temperatura em Celsius: ");
	scanf("%f", &cel);
	far = (9.0 * cel + 160.0) / 5.0;
	printf("A nova temperatura é: ");
	printf(far);
	printf(" F\n");
	return 1;
}

main();
