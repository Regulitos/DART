import 'dart:io';

void main() {
    /*Realice un algoritmo que permita ingresar el valor comprado en un almacén. Si el valor
    comprado es mayor a 100.000 el comprador obtendrá un descuento del 10%, pero si es
    mayor a 2000000 obtendrá un descuento del 20%.*/

    print("Ingrese el total del valor comprado: ");
    int compraTotal = int.parse(stdin.readLineSync().toString());

    if(compraTotal>200000){
        
        compraTotal = compraTotal - (compraTotal*20)~/100;
        print("El valor neto de su compra es: $compraTotal");
    }else if(compraTotal>100000){

        compraTotal = compraTotal - (compraTotal*10)~/100;
        print("El valor neto de su compra es: $compraTotal");
    }else{
        print("El valor de su compra es: $compraTotal");
    }

}