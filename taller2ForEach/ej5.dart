import 'dart:io';

void main() {

    /*Escribir un programa que almacene el diccionario con los créditos de las asignaturas 
    de un curso {'Matemáticas': 6, 'Física': 4, 'Química': 5} y después muestre por pantalla 
    los créditos de cada asignatura en el formato <asignatura> tiene <créditos> créditos, 
    donde  <asignatura>  es  cada  una  de  las  asignaturas  del  curso,  y  <créditos>  son  sus 
    créditos. Al final debe mostrar también el número total de créditos del curso.*/ 

    Map<String, int> asignaturas = {
        'Matemáticas': 40,
        'Física': 50,
        'Química': 35,
        'Ingles': 60,
        'Comunicacion': 30,
        'Calculo': 40};
    int creditosTotales = 0;
    asignaturas.forEach((materia,creditos){
        print("$materia tiene $creditos créditos");
        creditosTotales += creditos;
    });
    print("Teniendo un total de $creditosTotales creditos");
}