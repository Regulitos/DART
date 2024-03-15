import 'dart:io';

void main() {
  print("Ingrese el primer numero positivo:");
  int numero1 = int.tryParse(stdin.readLineSync()!) ?? -1;
  while (numero1 <= 0) {
    print("El numero ingresado no es válido. Ingrese un numero positivo:");
    numero1 = int.tryParse(stdin.readLineSync()!) ?? -1;
  }

  print("Ingrese el segundo numero positivo:");
  int numero2 = int.tryParse(stdin.readLineSync()!) ?? -1;
  while (numero2 <= 0) {
    print("El numero ingresado no es valido. Ingrese un numero positivo:");
    numero2 = int.tryParse(stdin.readLineSync()!) ?? -1;
  }

  int mayor = numero1 > numero2 ? numero1 : numero2;
  int menor = numero1 < numero2 ? numero1 : numero2;

  print("Numeros pares entre $menor y $mayor:");
  int contador = menor + 1;
  while (contador < mayor) {
    if (contador % 2 == 0) {
      print(contador);
    }
    contador++;
  }
}
