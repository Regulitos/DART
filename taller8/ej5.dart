import 'dart:io';

void main() {
  print("Ingrese el numero de pasajeros:");
  int numeroPasajeros = int.parse(stdin.readLineSync()!);

  print("Ingrese el valor del pasaje:");
  double valorPasaje = double.parse(stdin.readLineSync()!);

  double ingresosTotales = numeroPasajeros * valorPasaje;

  double gananciaConductor = 0;

  if (numeroPasajeros < 300) {
    gananciaConductor = 0;
  } else if (numeroPasajeros <= 500) {
    gananciaConductor = ingresosTotales * 0.20;
  } else {
    gananciaConductor = ingresosTotales * 0.30;
  }

  double dineroDueno = ingresosTotales - gananciaConductor;

  print("El conductor debe entregar \$${dineroDueno.toStringAsFixed(2)} al dueño del autobus.");
}
