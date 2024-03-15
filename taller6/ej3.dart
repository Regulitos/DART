import 'dart:io';

void main(){

    /*Realizar un algoritmo que permita calcular la nota  definitiva de un alumno, sabiendo que 
    tuvo que presentar dos talleres y cada uno de los talleres valían el 30% y un examen final 
    que valía el 40%.*/

    print("Ingrese la nota de el primer taller: ");
    double nota1 = double.parse(stdin.readLineSync()!);

    print("Ingrese la nota de el segundo taller: ");
    double nota2 = double.parse(stdin.readLineSync()!);

    print("Ingrese la nota del examen final: ");
    double notaExamen = double.parse(stdin.readLineSync()!);

    double notaFinal = (notaExamen*0.4)+(nota1*0.3)+(nota2*0.3);
    String notaFinalString = notaFinal.toStringAsFixed(2);
    print("La nota final es: $notaFinalString");
}