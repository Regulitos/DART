import 'dart:io';

String determinarPropiedades(int numero) {
  String resultado = '';
  
  if (numero > 0) {
    resultado += 'positivo';
  } else if (numero < 0) {
    resultado += 'negativo';
  } else {
    resultado += 'cero';
  }
  
  if (numero % 2 == 0) {
    resultado += ' y par';
  } else {
    resultado += ' e impar';
  }
  
  return resultado;
}

void main() {
  print("Ingrese un numero: ");
  int numero = int.parse(stdin.readLineSync()!);

  String propiedades = determinarPropiedades(numero);
  print("El numero $numero es $propiedades.");
}
