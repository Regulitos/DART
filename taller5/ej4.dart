import 'dart:io';

void main() {

    //Dado un número entero positivo calcular la suma desde 1 hasta dicho número.

    print("Digite un numero:");
    int numero = int.parse(stdin.readLineSync().toString());

    int contador = 0;
    int suma = 0;
    while(contador<=numero){
        suma=suma+contador;
        contador++;
    }
    print("La suma de numeros hasta tu numero es: $suma");
}