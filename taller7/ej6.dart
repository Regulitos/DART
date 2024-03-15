import 'dart:io';

void main(){
    /*Crear un algoritmo que permita al usuario elegir un candidato por el cual votar. Las 
    posibilidades son: candidato A por el partido rojo, candidato B por el partido verde, 
    candidato C por el partido azul. Según el candidato elegido (A, B ó C) se le debe imprimir el 
    mensaje “Usted ha votado por el partido [color que corresponda al candidato elegido]”. Si 
    el usuario ingresa una opción que no corresponde a ninguno de los candidatos disponibles, 
    indicar “Opción errónea”. */

    
    print('Opciones de candidatos:');
    print('A - Candidato A por el partido rojo');
    print('B - Candidato B por el partido verde');
    print('C - Candidato C por el partido azul');

    
    print('Por favor, ingrese la letra correspondiente al candidato por el cual desea votar:');
    String opcion = stdin.readLineSync()!.toUpperCase();

    
    switch (opcion) {
        case 'A':
            print('Usted ha votado por el partido rojo.');
            break;
        case 'B':
            print('Usted ha votado por el partido verde.');
            break;
        case 'C':
            print('Usted ha votado por el partido azul.');
            break;
        default:
            print('Opción errónea.');
    }
}