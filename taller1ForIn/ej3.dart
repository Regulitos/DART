import 'dart:io';

void main() {

    /*Escribir  un  programa  que  almacene  las  asignaturas  de  un  curso  (por  ejemplo 
    Matemáticas, Física, Química, Historia y Lengua) en una lista, pregunte al usuario la 
    nota que ha sacado en cada asignatura, y después las muestre por pantalla con el 
    mensaje En <asignatura> has sacado <nota> donde <asignatura> es cada una des las 
    asignaturas de la lista y <nota> cada una de las correspondientes notas introducidas 
    por el usuario.*/

    List <String> materias = ["Matemáticas","Fisica","Química","Historia","Lengua"];
    List <double> notas = [];

    for(String materia in materias){
        print("Ingrese la nota de $materia:");
        double nota = double.parse(stdin.readLineSync()!);
        notas.add(nota);
    }   

    materias.forEach((x)=> print('La nota de $x es ${notas[materias.indexOf(x)]}'));
}