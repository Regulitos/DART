import 'dart:io';

void main(){

    /*Escribir un programa que pregunte al usuario los números ganadores de la lotería, los 
    almacene en una lista y los muestre por pantalla ordenados de menor a mayor.*/

    List <int> ganadores = [];
    
    
    for(int i in List.generate(4,(index)=>index+1)){
        print("Digite los numeros ganadores de la loteria: ");
        int numLoteria = int.parse(stdin.readLineSync()!);
        ganadores.add(numLoteria);
    }

    ganadores.sort();

    print("Lista Ordenada: ");
    ganadores.forEach((x)=> print(x));
}