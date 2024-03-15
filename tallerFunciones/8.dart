import 'dart:math';
import 'dart:io';

void main() {
  while (true) {
    print("\nOperaciones disponibles:");
    print("1. Multiplicacion");
    print("2. Suma");
    print("3. Resta");
    print("4. Division");
    print("5. Potencia");
    print("6. Raiz");
    print("7. Salir");
    
    print("Ingrese el numero de la operacion que desea realizar: ");
    String opcion = stdin.readLineSync()!;

    print("Ingrese el primer numero: ");
    int num1 = int.parse(stdin.readLineSync()!);
    print("Ingrese el segundo numero: ");
    int num2 = int.parse(stdin.readLineSync()!);
    
    switch (opcion) {
      case '1':
        multiplicacion(num1, num2);
        break;
      case '2':
        suma(num1, num2);
        break;
      case '3':
        resta(num1, num2);
        break;
      case '4':
        division(num1, num2);
        break;
      case '5':
        potencia(num1, num2);
        break;
      case '6':
        raiz(num1, num2);
        break;
      case '7':
        print("Adios!");
        return;
      default:
        print("Opcion no valida. Por favor, seleccione una opción del 1 al 7.");
    }
  }
}

void multiplicacion(int num1, int num2) {
  int resultado = num1 * num2;
  print("El resultado de la multiplicacion es: $resultado");
}

void suma(int num1, int num2) {
  int resultado = num1 + num2;
  print("El resultado de la suma es: $resultado");
}

void resta(int num1, int num2) {
  int resultado = num1 - num2;
  print("El resultado de la resta es: $resultado");
}

void division(int num1, int num2) {
  if (num2 != 0) {
    double resultado = num1 / num2;
    print("El resultado de la division es: $resultado");
  } else {
    print("Error: No se puede dividir entre cero.");
  }
}

void potencia(int num1, int num2) {
  int resultado = pow(num1, num2).toInt();
  print("El resultado de elevar $num1 a la potencia $num2 es: $resultado");
}

void raiz(int num1, dynamic num2) {
  if (num2 >= 0) {
    double raiz = 1/num2;    
    double resultado = pow(num1, raiz).toDouble();
    print("La raiz $num2 de $num1 es: ${resultado.toInt()}");
  } else {
    print("Error: No se puede calcular la raiz de un numero negativo.");
  }
}


