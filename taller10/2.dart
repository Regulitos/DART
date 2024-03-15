import 'dart:io';

void main() {
  print("Ingrese la cantidad de notas de alumnos:");
  int cantidadNotas = int.parse(stdin.readLineSync()!);

  int notasMayoresOIgualesA7 = 0;
  int notasMenoresA7 = 0;
  int contador = 0;

  while (contador < cantidadNotas) {
    print("Ingrese la nota del alumno ${contador + 1}:");
    double nota = double.parse(stdin.readLineSync()!);

    if (nota >= 7) {
      notasMayoresOIgualesA7++;
    } else {
      notasMenoresA7++;
    }

    contador++;
  }

  print("Cantidad de alumnos con notas mayores o iguales a 7: $notasMayoresOIgualesA7");
  print("Cantidad de alumnos con notas menores a 7: $notasMenoresA7");
}

