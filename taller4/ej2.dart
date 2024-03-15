import 'dart:io';

void main (){

    /*Realice un algoritmo que calcule el monto a pagar por un servicio de estacionamiento,
    teniendo en cuenta que por la primera hora de estadía se tiene una tarifa de 1000 pesos y
    las restantes tienen un costo de 600 pesos. Se tienen como datos la hora de entrada y de
    salida en formato militar, iniciada una hora se contabiliza como hora total. */

    print('Digite la hora de entrada al estacionamiento:');
    int horaEntrada = int.parse(stdin.readLineSync().toString());

    print('Digite la hora de salida del estacionamiento:');
    int horaSalida = int.parse(stdin.readLineSync().toString());


    int totalHoras;

    if(horaEntrada>horaSalida){
        totalHoras = (horaSalida+2400) - horaEntrada;
    }else{
        totalHoras = horaSalida - horaEntrada;
    }

    int valorEstacionamiento;

    if(totalHoras<=100){      
        valorEstacionamiento = 1000;
    }else{
        int restos = totalHoras % 100;
        
        if(restos>0){
            valorEstacionamiento = (600*(totalHoras~/100))+ 1000 ;
        }else{
            valorEstacionamiento = (600*((totalHoras~/100)-1))+1000;
        }
        
    }
    print('Valor del estacionamiento: $valorEstacionamiento');

}