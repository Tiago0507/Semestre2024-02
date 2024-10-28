//CA_cpp_SUMA_String_numbersV1.cpp
#include <iostream>
char Number1[] = "0796.3";
char Number2[] = "0465.1";
char Result[7];
char carry;
int i;
int main() {
	unsigned char carry = 0; // Acarreo
	unsigned char sum = 0; // Suma temporal
	int len = 6; // strlen(Number1); // Longitud de las cadenas (asumimos que son iguales)
	// Recorrer desde el final de las cadenas hacia el principio
	for (int i = len - 1; i >= 0; i--) {
		// Si es el punto decimal, simplemente lo copiamos al resultado
		if (Number1[i] == '.') {
			Result[i] = '.';
			continue;
		}
		// Convertir los caracteres numéricos a enteros (usando char)
		unsigned char digit1 = Number1[i] - '0';
		unsigned char digit2 = Number2[i] - '0';
		sum = digit1 + digit2 + carry; // Sumar los dígitos junto con el acarreo
		if (sum > 9) { // Si la suma es mayor que 9, generamos un acarreo
			carry = 1;
			sum = sum - 10; // Ajustamos el resultado para que sea un dígito válido (0-9)
		}
		else {
			carry = 0; // No hay acarreo
		}
		// Almacenar el dígito de la suma en la posición correspondiente del resultado
		Result[i] = sum + '0'; // Convertimos de vuelta a carácter
	}
	Result[5] = '\0';
	// Imprimir el resultado
	printf("Suma: %s\n", Result);
	std::cout << "\n";
}