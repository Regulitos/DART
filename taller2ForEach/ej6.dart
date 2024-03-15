import 'dart:io';

void main(){

    /*Escribir un programa que cree un diccionario vacío y lo vaya llenado con información 
    sobre una persona (por ejemplo nombre, edad, sexo, teléfono, correo electrónico, etc.) 
    que  se  le  pida  al  usuario.  Cada  vez  que  se  añada  un  nuevo  dato  debe  imprimirse  el 
    contenido del diccionario.*/

    Map <String, dynamic> persona = {};
    bool continuar = true;
    for(int i = 0; continuar; i++) {
        print("Ingresa un dato a añadir: ");
        String dato = stdin.readLineSync()!;
        print("Ingresa su valor: ");
        dynamic valor = stdin.readLineSync()!;
        persona[dato] = valor;
        print('Datos Añadidos:');
        persona.forEach((data,value)=> print('$data: $value'));
        print("¿Desea continuar? s/n");
        String respuesta =stdin.readLineSync()!
        if(respuesta=="n" || respuesta=="N"){
            continuar = false;
        }
    }
}