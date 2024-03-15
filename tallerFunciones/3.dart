void intercambiarVariables<T>(T a, T b) {
    //encontre este tipo de parametro generico llamado T, supuestamente funciona mejor en funciones que dynamic.
  print("Antes del intercambio:");
  print("a = $a, b = $b");

  T temp = a;
  a = b;
  b = temp;

  print("Despues del intercambio:");
  print("a = $a, b = $b");
}

void main() {
  var variable1 = 5;
  var variable2 = 10;
  
  print("Variables originales:");
  print("variable1 = $variable1, variable2 = $variable2");

  intercambiarVariables(variable1, variable2);
}
