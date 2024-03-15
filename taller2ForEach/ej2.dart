import 'dart:io';

void main(){

    /*Escribir un programa que pregunte al usuario su nombre, edad, dirección y teléfono y 
    lo guarde en un diccionario. Después debe mostrar por pantalla el mensaje <nombre> 
    tiene <edad> años, vive en <dirección> y su número de teléfono es <teléfono>.*/

    Map <String,dynamic> persona={};

    print("Ingrese su nombre:");
    persona['nombre']=stdin.readLineSync()!;

    print("Ingrese su edad:");
    persona['edad']=int.parse(stdin.readLineSync()!);

    print("Ingrese su dirección:");
    persona['direccion']=stdin.readLineSync()!;

    print("Ingrese su número de teléfono:");
    persona['telefono']=int.parse(stdin.readLineSync()!);

    print('${persona['nombre']} tiene ${persona['edad']} años, vive en ${persona['direccion']} y su número de teléfono es ${persona['telefono']}.');
}