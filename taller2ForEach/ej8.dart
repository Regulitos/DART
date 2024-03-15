import 'dart:io';

void main() {

    /*Escribir  un  programa  que  cree  un  diccionario  de  traducción  español-
    inglés.  El  usuario  introducirá  las  palabras  en  español  e  inglés  separadas  por  dos 
    puntos,  y  cada  par  <palabra>:<traducción>  separados  por  comas.  El programa  debe 
    crear un diccionario con las palabras y sus traducciones. Después pedirá una frase en 
    español y  utilizará  el diccionario para  traducirla  palabra a  palabra.  Si una  palabra  no 
    está en el diccionario debe dejarla sin traducir.*/

    // Pedir al usuario que introduzca las palabras y sus traducciones
    print('Introduce las palabras en español e inglés separadas por dos puntos, y cada par separado por comas:');
    String entrada = stdin.readLineSync()!;

    // Crear un mapa para almacenar las traducciones
    Map<String, String> diccionario = {};

    // Dividir la entrada por comas para obtener los pares de palabras
    List<String> pares = entrada.split(',');

    // Iterar sobre los pares de palabras y agregarlas al diccionario
    for (String par in pares) {
        List<String> palabras = par.trim().split(':');
        if (palabras.length == 2) {
        diccionario[palabras[0].trim()] = palabras[1].trim();
        }
    }

    // Pedir al usuario que introduzca una frase en español
    print('Introduce una frase en español para traducir:');
    String frase = stdin.readLineSync()!;

    // Dividir la frase en palabras
    List<String> palabrasFrase = frase.split(' ');

    // Traducir cada palabra usando el diccionario
    List<String> traduccion = [];
    for (String palabra in palabrasFrase) {
        // Buscar la traducción de la palabra en el diccionario
        String? traduccionPalabra = diccionario[palabra];
        // Si la palabra no tiene traducción, dejarla sin modificar
        traduccion.add(traduccionPalabra ?? palabra);
    }

    // Mostrar la traducción de la frase
    print('La traducción de la frase es:');
    print(traduccion.join(' '));
}