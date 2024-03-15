import 'dart:io';

void main() {
  String contrasena;
  
  print("Ingrese la contraseña:");
  contrasena = stdin.readLineSync()!;
  
  while (contrasena != "1234") {
    print("Contraseña incorrecta. Intentelo de nuevo:");
    contrasena = stdin.readLineSync()!;
  }

  print("Bienvenido!");
}
