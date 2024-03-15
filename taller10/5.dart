import 'dart:io';

void main() {
  List<int> lista1 = [];
  List<int> lista2 = [];
  int sumaLista1 = 0;
  int sumaLista2 = 0;
  int i = 0;

  
  print("Ingrese 15 valores para la lista 1:");
  while (i < 15) {
    print("Ingrese el valor ${i + 1}:");
    int valor = int.parse(stdin.readLineSync()!);
    lista1.add(valor);
    sumaLista1 += valor;
    i++;
  }

  i = 0;

  print("Ingrese 15 valores para la lista 2:");
  while (i < 15) {
    print("Ingrese el valor ${i + 1}:");
    int valor = int.parse(stdin.readLineSync()!);
    lista2.add(valor);
    sumaLista2 += valor;
    i++;
  }

  if (sumaLista1 > sumaLista2) {
    print("Lista 1 mayor");
  } else if (sumaLista2 > sumaLista1) {
    print("Lista 2 mayor");
  } else {
    print("Listas iguales");
  }
}
