import 'dart:io';

void main() {
  print("Ingrese la cantidad de piezas a procesar:");
  int cantidadPiezas = int.parse(stdin.readLineSync()!);

  int piezasAptas = 0;
  int i = 1;
  while (i <= cantidadPiezas) {
    print("Ingrese la longitud de la pieza $i:");
    double longitud = double.parse(stdin.readLineSync()!);
    
    if (longitud >= 1.20 && longitud <= 1.30) {
      piezasAptas++;
    }

    i++;
  }

  print("La cantidad de piezas aptas en el lote es: $piezasAptas");
}
