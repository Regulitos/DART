import 'dart:io';


void main(i){
    /*Escribir  un  programa  que  guarde  en  una  variable  el  diccionario  {'Euro':'€',  'Dollar':'$', 
    'Yen':'¥'}, pregunte al usuario por una divisa y muestre su símbolo o un mensaje de aviso 
    si la divisa no está en el diccionario.*/

    Map <String,String> divisa = {'Euro':'€', 'Dolar':'\$', 'Yen':'¥'};

    bool encontrada=false;
    print("Elija una divisa: "); 
    String moneda = stdin.readLineSync()!;

    divisa.forEach((key,value){
        if(moneda==key){
            encontrada=true;
            print("El símbolo de la divisa es: $value");
        }
    });

    if(encontrada==false){
        print("La divisa no está en el diccionario");
    }
}