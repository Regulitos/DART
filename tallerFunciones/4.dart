import 'dart:io';


int obtenerDigitoEnPosicion(int numero, int posicion) {
  String numeroComoString = numero.toString();
  
  if (posicion >= 1 && posicion <= numeroComoString.length) {
    String digitoEnPosicion = numeroComoString[posicion - 1];
    return int.parse(digitoEnPosicion);
  } else {
    return -1;
  }
}

void main() {
  print("Ingrese un numero de varias cifras");
  int numero = int.parse(stdin.readLineSync()!);      
  print("Ingrese la posicion que quiere obtener del numero");
  int posicion = int.parse(stdin.readLineSync()!); 
  
  int digito = obtenerDigitoEnPosicion(numero, posicion);
  
  if (digito != -1) {
    print("El digito en la posicion $posicion del numero $numero es: $digito");
  } else {
    print("La posicion $posicion no es valida para el numero $numero");
  }
}
