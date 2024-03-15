void main() {
  int limite = 500;
  int multiplo = 8;
   
  String multiplos = "";
  multiplos += "$multiplo";
  while (multiplo <= limite) {     
    multiplo += 8;
    multiplos += "-$multiplo";
  }
  print(multiplos);
}

