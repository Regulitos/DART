import 'dart:io';

int calcularCubo(int numero) {
  return numero * numero * numero;
}

void main() {
  print("Ingrese el valor de n: ");
  int n = int.parse(stdin.readLineSync()!);

  print("Ingrese el valor de m: ");
  int m = int.parse(stdin.readLineSync()!);

  if (n <= m) {
    print("El cubo de los numeros entre $n y $m es:");
    for (int i = n; i <= m; i++) {
      print("El cubo de $i es: ${calcularCubo(i)}");
    }
  } else {
    print("n debe ser menor o igual que m.");
  }
}
