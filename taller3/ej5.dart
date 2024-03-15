import 'dart:io';

void main (){
    //Horas trabajadas y valor por hora, sacar salario.

    print('Digite las horas trabajadas:');
    int horas = int.parse(stdin.readLineSync().toString());

    print('Digite el valor por hora:');
    double valor = double.parse(stdin.readLineSync().toString());

    double salario = horas * valor;

    print('El salario es: $salario');
    
}