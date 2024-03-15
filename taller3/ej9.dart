import 'dart:io';

void main (){

    //costo estacionamiento primera hora 1000 restantes 800

    print('Digite las horas de estacionamiento:');
    double horas = double.parse(stdin.readLineSync().toString());

    double valorEstacionamiento;
    if(horas>1){
        horas = horas - 1;
        valorEstacionamiento = horas*800+1000;
    }else{
        valorEstacionamiento = 1000;
    }
    print('Valor del estacionamiento: $valorEstacionamiento');

}