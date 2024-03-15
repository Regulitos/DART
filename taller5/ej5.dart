import 'dart:io';

void main(){

    //Calcular la suma de los números comprendidos entre dos números dados por teclado.

    print("Digite el primer numero: ");
    int x = int.parse(stdin.readLineSync().toString());

    print("Digite el segundo numero: ");
    int y = int.parse(stdin.readLineSync().toString());

    int suma = 0;
    int contador = 0;
    if(x<y){
        contador = x;
        while(contador<=y){
            suma=suma+contador;
            contador++;
        }
    }else{
        contador = y;
        while(contador<=x){
            suma=suma+contador;
            contador++;
        }
    }
    print("La suma de los numeros comprendidos entre tus dos numeros es: $suma");
}