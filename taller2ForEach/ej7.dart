import 'dart:io';

void main() {

    /*Escribir un programa que cree un diccionario simulando una cesta de 
    la compra. El programa debe preguntar el artículo y su precio y añadir 
    el par al diccionario, hasta que el usuario decida terminar. Después se 
    debe mostrar por pantalla la lista de la compra y el coste total, con el 
    siguiente formato*/

    Map <String, int> cesta = {};
    bool continuar = true;
    for(int i = 0; continuar; i++) {
        print("Ingresa el producto a añadir: ");
        String dato = stdin.readLineSync()!;
        print("Ingresa su valor: ");
        int valor = int.parse(stdin.readLineSync()!);
        cesta[dato] = valor;
        print("¿Desea añadir mas productos a su compra? s/n");
        String respuesta =stdin.readLineSync()!;
        if(respuesta=="n" || respuesta=="N"){
            continuar = false;
        }
    }
    int valorTotal = 0;
    print("Lista de compra");
    cesta.forEach((producto,valor){
        print("$producto: $valor");
        valorTotal += valor;
    });
    print("El valor total es $valorTotal");
}