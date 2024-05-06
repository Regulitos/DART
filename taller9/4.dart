import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();

  int numero1 = random.nextInt(101);
  int numero2 = random.nextInt(101);
  
  int sumaCorrecta = numero1 + numero2;
  
  int respuesta = 0;
  while (respuesta != sumaCorrecta){
    print("Por favor, calcule la suma de $numero1 y $numero2:");
    respuesta = int.tryParse(stdin.readLineSync()!) ?? -1;
    
    if (respuesta != sumaCorrecta) {
      print("Respuesta incorrecta. Intente de nuevo.");
    }
   }

  print("¡Respuesta correcta! La suma de $numero1 y $numero2 es $sumaCorrecta.");
}
