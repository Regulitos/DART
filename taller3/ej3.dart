import 'dart:io';

void main() {
  // Pedir al usuario que ingrese 2 números enteros y alcular suma, resta y multiplicación.

  print("Ingrese el primer número entero:");
  int numero1 = int.parse(stdin.readLineSync()!);
  
  print("Ingrese el segundo número entero:");
  int numero2 = int.parse(stdin.readLineSync()!);

  
  int suma = numero1 + numero2;
  int resta = numero1 - numero2;
  int multiplicacion = numero1 * numero2;

  print('Suma: $suma\nResta: $resta\nMultiplicación: $multiplicacion');
}