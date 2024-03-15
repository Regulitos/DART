import 'dart:io';

void main() {
  print("Ingrese la longitud del primer lado del triangulo:");
  double lado1 = double.parse(stdin.readLineSync()!);

  print("Ingrese la longitud del segundo lado del triangulo:");
  double lado2 = double.parse(stdin.readLineSync()!);

  print("Ingrese la longitud del tercer lado del triangulo:");
  double lado3 = double.parse(stdin.readLineSync()!);

  bool esTriangulo = lado1 + lado2 > lado3 && lado1 + lado3 > lado2 && lado2 + lado3 > lado1;

  if (esTriangulo) {
    if (lado1 == lado2 && lado2 == lado3) {
      print("El triangulo es equilatero.");
    } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
      print("El triangulo es isosceles.");
    } else {
      print("El triangulo es escaleno.");
    }
  } else {
    print("Las longitudes proporcionadas no forman un triangulo.");
  }
}
