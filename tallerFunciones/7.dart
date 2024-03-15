import 'dart:io';

Map<String, int> contarVocales(String cadena) {
  Map<String, int> conteo = {
    'a': 0,
    'e': 0,
    'i': 0,
    'o': 0,
    'u': 0,
  };

  for (int i = 0; i < cadena.length; i++) {
    String caracter = cadena[i].toLowerCase();
    if (conteo.containsKey(caracter)) {
      conteo[caracter] = conteo[caracter]! + 1;
    }
  }

  return conteo;
}

void main() {
  print("Ingrese una cadena de caracteres: ");
  String cadena = stdin.readLineSync()!;

  Map<String, int> resultado = contarVocales(cadena);

  resultado.forEach((vocal, cantidad) {
    print("Número de apariciones de $vocal: $cantidad");
  });
}
