import 'dart:io';

void main() {
  int numero1, numero2;
  
  print("Ingrese el primer numero:");
  numero1 = int.tryParse(stdin.readLineSync()!) ?? 0;

  print("Ingrese el segundo numero:");
  numero2 = int.tryParse(stdin.readLineSync()!) ?? 0;
  
  while (numero1 != 0 || numero2 != 0) {
    int suma = numero1 + numero2;
    print("La suma de $numero1 y $numero2 es: $suma");
    
    print("Ingrese el primer numero:");
    numero1 = int.tryParse(stdin.readLineSync()!) ?? 0;

    print("Ingrese el segundo numero:");
    numero2 = int.tryParse(stdin.readLineSync()!) ?? 0;
  }
  
  print("Ambos numeros son 0. Programa terminado.");
}
