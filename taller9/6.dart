import 'dart:io';

void main() {
  print("Ingrese el primer numero entero:");
  int numero1 = int.parse(stdin.readLineSync()!);
  print("Ingrese el segundo numero entero:");
  int numero2 = int.parse(stdin.readLineSync()!);

  int contador = 0;
  print("Ingrese numeros enteros entre $numero1 y $numero2:");
  while (true) {
    int numero = int.parse(stdin.readLineSync()!);
    if (numero == null || (numero < numero1 || numero > numero2)) {
      break;
    }
    contador++;
  }

  print("La cantidad de numeros escritos entre $numero1 y $numero2 es: $contador");
}
