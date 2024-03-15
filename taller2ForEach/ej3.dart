import 'dart:io';

void main(){

    /*Escribir un programa que guarde en un diccionario los precios de las frutas 
    de la tabla, pregunte al usuario por una fruta, un número de kilos y muestre 
    por pantalla el precio de ese número de kilos de fruta. Si la fruta no está en 
    el diccionario debe mostrar un mensaje informando de ello.*/

    Map <String, double> frutas = {
        'Platano': 1.35,
        'Manzana': 0.80,
        'Pera': 0.85,
        'Naranja': 0.70
    };

    print('Que fruta desea comprar?: ');
    frutas.forEach((x,y)=>print(x));
    String fruta = stdin.readLineSync()!;
    print("Cuantos kilos desea?: ");
    int kilos = int.parse(stdin.readLineSync()!);
    bool encontrada = false;
    frutas.forEach((x,y){
        if(x == fruta){
            encontrada = true;
            double precio = kilos * y;
            print('El precio de la fruta es: $precio');
        }
    });
    if(!encontrada){
        print('La fruta no se encuentra en el diccionario');
    }

}