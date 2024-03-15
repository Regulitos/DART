import 'dart:io';

void main(){

    /*Realizar un algoritmo que permita ordenar de menos a mayor, 3  números ingresados por 
    teclado. */
    List <int> numero=[];
    print("Ingrese 3 números: ");
    int numero0 = int.parse(stdin.readLineSync()!);
    int numero1 = int.parse(stdin.readLineSync()!);
    int numero2 = int.parse(stdin.readLineSync()!);

    numero.add(numero0);
    numero.add(numero1);
    numero.add(numero2);

    bool listo=true;
    while(listo){
        if(numero[1]<numero[0]){
            var aux = numero[1];
            numero[1] = numero[0];
            numero[0] = aux;
        }else if(numero[1]>numero[2]){
            var aux = numero[1];
            numero[1] = numero[2];
            numero[2] = aux;
        }else{
            listo=false;
        }
    }
    print(numero);
}