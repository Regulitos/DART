import 'dart:io';

void main (){
    /*Escribir  un  programa  que  almacene  las  asignaturas  de  un  curso  (por  ejemplo 
    Matemáticas, Física, Química, Historia y Lengua) en una lista, pregunte al usuario la 
    nota que ha sacado en cada asignatura y elimine de la lista las asignaturas aprobadas. 
    Al final el programa debe mostrar por pantalla las asignaturas que el usuario tiene que 
    repetir.*/

    List <String> materias = ["Fisica","Química","Historia","Matematica","Lengua"];
    List <String> materiasAprob = [];

    materias.forEach((x){
        print('Ingrese la nota de $x');
        double nota = double.parse(stdin.readLineSync()!);
        if(nota>3){
            materiasAprob.add(x);
        }
    });
    materiasAprob.forEach((x)=> materias.remove(x));

    print('Estas son las materias que debe recuperar:');
    materias.forEach((x)=> print(x));    
}