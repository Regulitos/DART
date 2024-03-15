import 'dart:io';

main(){
    /*Diseñar el algoritmo correspondiente a un programa que lea el valor correspondiente a una distancia
    en millas marinas y las escriba expresadas en metros. Sabiendo que 1 milla marina equivale a 1852 metros.
    */
    double millas;
    print('Escriba la cantidad de millas a convertir:');
    millas = double.parse(stdin.readLineSync().toString());
    
    double metros = millas*1852;
    print('$millas millas en metros es $metros');

}

