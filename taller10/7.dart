import 'dart:io';

void main() {
  print("Ingrese la cantidad de numeros:");
  int cantidadNumeros = int.parse(stdin.readLineSync()!);

  double suma = 0;
  for (int i = 1; i <= cantidadNumeros; i++) {
    print("Ingrese el numero $i:");
    double numero = double.parse(stdin.readLineSync()!);
    suma += numero;
  }

  double promedio = suma / cantidadNumeros;
  print("El promedio de los $cantidadNumeros numeros ingresados es: $promedio");
}
