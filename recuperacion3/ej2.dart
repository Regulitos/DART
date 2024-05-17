import 'dart:io';

void main() {
  List<int> numerosGanadores = [];
  print("Digite la cantidad de numeros Ganadores:");
  int cantNum = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= cantNum; i++) {
    print("Digite los numeros ganadores de la loteria:");
    int numero = int.parse(stdin.readLineSync()!);
    numerosGanadores.add(numero);
  }


  for (int i = 0; i < numerosGanadores.length; i++) {
    for (int j = i + 1; j < numerosGanadores.length; j++) {
      if (numerosGanadores[i] < numerosGanadores[j]) {
        int temp = numerosGanadores[i];
        numerosGanadores[i] = numerosGanadores[j];
        numerosGanadores[j] = temp;
      }
    }
  }
  numerosGanadores.forEach((numero) {
    print(numero);
   });
}
