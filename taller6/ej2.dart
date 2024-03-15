import 'dart:io';

void main(){

    /*Una tienda ofrece un descuento del 15% sobre el total de la compra durante los meses de 
    enero, febrero y marzo, y un descuento del 20% en los meses de abril, mayo y junio. Dado 
    un mes y un importe, calcular cuál es la cantidad que se debe cobrar al cliente.*/

    int mes;
    double importe;
    double descuento;
    double total;

    print("Ingrese el mes en numero: ");
    mes = int.parse(stdin.readLineSync().toString());
    print("Ingrese el valor de la compra: ");
    importe = double.parse(stdin.readLineSync()!);

    if(mes == 1 || mes == 2 || mes == 3){
        descuento = importe * 0.15;
        total = importe - descuento;
        print("El total de la compra con descuento es: $total");
    }else if(mes == 4 || mes == 5 || mes == 6){
        descuento = importe * 0.20;
        total = importe - descuento;
        print("El total de la compra con descuento es: $total");
    }else{
        print("El total de la compra es $importe");
    }

}