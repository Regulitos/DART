import 'dart:io';

void main() {
  print("Ingrese la cantidad de empleados:");
  int n = int.parse(stdin.readLineSync()!);

  int empleadosEntre100y300 = 0;
  int empleadosMasDe300 = 0;
  double gastoTotal = 0;

  int contador = 0;
  while (contador < n) {
    contador++;
    print("Ingrese el sueldo del empleado $contador:");
    double sueldo = double.parse(stdin.readLineSync()!);
    gastoTotal += sueldo;

    if (sueldo >= 100 && sueldo <= 300) {
      empleadosEntre100y300++;
    } else if (sueldo > 300) {
      empleadosMasDe300++;
    }
  }

  print("Cantidad de empleados que cobran entre \$100 y \$300: $empleadosEntre100y300");
  print("Cantidad de empleados que cobran más de \$300: $empleadosMasDe300");
  print("Importe total que gasta la empresa en sueldos al personal: \$${gastoTotal.toStringAsFixed(2)}");
}
