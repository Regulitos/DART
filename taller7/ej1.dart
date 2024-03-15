import 'dart:io';

void main(){

    /*Hacer un algoritmo que determine si una persona debe pagar renta. Si la persona tiene mas 
    de 30 años y gana mas de 2 salarios mínimos legales vigentes debe pagar el 20% de su salario 
    ganado durante un año. Si la persona es mayor a 50 años y gana mas de 1 salario mínimo 
    debe pagar el 10% de su salario ganado durante un año. */

    int edad;
    var salarioMinimo = 1500000;
    var salario;
    var renta;

    print("Ingrese su edad: ");
    edad = int.parse(stdin.readLineSync()!);
    print("Ingrese su salario: ");
    salario = int.parse(stdin.readLineSync()!);

    if (salario>salarioMinimo && edad>50){
        renta=salario*0.1;
        print("Debe pagar $renta de renta");
    }else if (salario>salarioMinimo*2 && edad>30){
        renta=salario*0.2;
        print("Debe pagar $renta de renta");
    }else{
        print("No debe pagar Renta.");
    }
}