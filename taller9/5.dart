import 'dart:io';

void main() {
  print("Ingrese el valor de 'n' para generar la serie Fibonacci:");
  int n = int.parse(stdin.readLineSync()!);

  int a = 0;
  int b = 1;
  int c;
  int i = 0;

  print("Serie Fibonacci hasta $n:");
  print(a); // Imprimir el primer número de la serie

  while (i < n - 1) {
    print(b);
    c = a + b;
    a = b;
    b = c;
    i++;
  }
}
