import 'dart:io';

class CuentaBancaria{
  String cuenta;
  String documento;
  int saldo;
  double interes;

  CuentaBancaria(this.cuenta, this.documento, this.saldo,this.interes){
    this.cuenta =cuenta;
    this.documento =documento;
    this.saldo =saldo;
    this.interes =interes;
  }

  void ingresarDinero(){
    print("Digite la cantidad de dinero que desea ingresar");
    int ingreso = int.parse(stdin.readLineSync()!);
    saldo+=ingreso;
    print("Dinero ingresado con exito.");
  }
  void retirarDinero(){
    bool ret = true;
    while(ret){
        print("Digite la cantidad de dinero que desea retirar");
      int retiro = int.parse(stdin.readLineSync()!);
      if(saldo<retiro){
        print("No puede retirar una cantidad mayor a la que dispone en su cuenta");        
      }else{
        saldo-=retiro;
        ret = false;
        print("Dinero retirado con exito.");
      }
    }
  }
  void mostrarDinero(){
    print("La cantidad de dinero de la que dispone: $saldo");
  }
}

void main(){
  CuentaBancaria primero = new CuentaBancaria("123456789","1088154879",15000,1.2);
  int opcion;
  do{
    
    print("|--------------------------------------------------|");
    print("|1-Ingresar dinero.                                |");
    print("|2-Retirar dinero.                                 |");
    print("|3-Ver Saldo.                                      |");
    print("|0-Salir.                                          |"); 
    print("|--------------------------------------------------|");
    opcion = int.parse(stdin.readLineSync()!);
    
    switch(opcion) {
    case 1:  
            primero.ingresarDinero(); 
            break;
    case 2: 
            primero.retirarDinero();
            break;
    case 3: 
            primero.mostrarDinero();
            break;
    default:
            print("Ingresa una opcion valida");
            break;
    }
  }while(opcion!=0);
}