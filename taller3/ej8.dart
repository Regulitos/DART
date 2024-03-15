import 'dart:io';

void main(){
    //valor pasaje de avion => distancia a recorrer, numero de dias de estancia

    int valorKm = 585;
    int valorDia = 100000;

    print('Digite la distancia a recorrer:');
    int distancia = int.parse(stdin.readLineSync().toString());

    print('Digite el numero de dias de estancia:');
    int dias = int.parse(stdin.readLineSync().toString());

    int valorPasaje = valorKm * distancia + valorDia * dias;

    print('El valor del pasaje es: $valorPasaje');
}