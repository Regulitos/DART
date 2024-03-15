import 'dart:io';

void main() {
  print("Ingrese la cantidad de personas:");
  int n = int.parse(stdin.readLineSync()!);

  double sumaAlturas = 0;
  int contador = 0;

  while (contador < n) {
    print("Ingrese la altura de la persona ${contador + 1}:");
    double altura = double.parse(stdin.readLineSync()!);
    sumaAlturas += altura;
    contador++;
  }
  double alturaPromedio = sumaAlturas / n;
  print("La altura promedio de las personas es: $alturaPromedio");
}
