import 'dart:io';

void main() {
  print("Ingrese el nombre de la niñera:");
  String nombre = stdin.readLineSync()!;

  print("Ingrese la cantidad de horas de servicio:");
  int horas = int.parse(stdin.readLineSync()!);

  int costoTotal = 0;
  if (horas <= 10) {
    costoTotal = horas * 20000;
  } else if (horas <= 15) {
    costoTotal = 10 * 20000 + (horas - 10) * 25000;
  } else if (horas <= 20) {
    costoTotal = 10 * 20000 + 5 * 25000 + (horas - 15) * 40000;
  } else {
    costoTotal = 10 * 20000 + 5 * 25000 + 5 * 40000 + (horas - 20) * 60000;
  }

  print("Nombre de la niñera: $nombre");
  print("Costo total del servicio: $costoTotal pesos");
}
