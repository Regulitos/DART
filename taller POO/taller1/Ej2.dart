/*Desarrolla una clase Cafetera con atributos _capacidadMaxima (la cantidad máxima 
de café que puede contener la cafetera) y _cantidadActual (la cantidad actual de café 
que hay en la cafetera). Implementar los siguientes métodos 
• establece la capacidad máxima en 1000 (c.c.)  y la actual en cero (cafetera 
vacía).  
• simula la acción de servir una taza con la capacidad indicada.  Si la cantidad 
actual de café “no alcanza” para llenar la taza, se sirve lo que quede. 
• vaciarCafetera: pone la cantidad de café actual en cero.   
• agregarCafe: añade a la cafetera la cantidad de café indicada.*/

import 'dart:io';

class Cafetera{
  int cant_max;
  int cant_actual;

  Cafetera(this.cant_max, this.cant_actual){
    this.cant_actual = cant_actual;
    this.cant_max = cant_max;
  }

  void servirCafe(){
      print("Ingrese la cantidad de c.c. de cafe que desea servir?");
      int servir = int.parse(stdin.readLineSync()!);
      if(servir > cant_actual){
        print("La cantidad que se alcanza supera la capacidad actual de la cafetera, por eso se servira $cant_actual c.c.");
        cant_actual=0;
      }else{
        cant_actual-=servir;
      }    
      print(cant_actual);
  }

  void vaciarCafetera(){
    print("Cafetera Vaciada");
    cant_actual=0;  
    print(cant_actual);  
  }

  void agregarCafe(){
    bool ret = true;
    while(ret){
      print("Ingrese la cantidad de c.c. de cafe que desea agregar?");
      int add = int.parse(stdin.readLineSync()!);
      if((add+cant_actual) > cant_max){
        print("La cantidad que se alcanza supera la capacidad maxima el de la cafetera.");
      }else{
        print("Cantidad agregada con exito");
        cant_actual+=add;
        ret = false;        
      }
    }
    print(cant_actual);
  }
}

void main(){
  Cafetera segundo = new Cafetera(1000,0);

  int opcion;
  do{
    
    print("|--------------------------------------------------|");
    print("|1-Añadir Cafe.                                    |");
    print("|2-Vaciar Cafe.                                    |");
    print("|3-Servir Cafe.                                    |");
    print("|0-Salir.                                          |"); 
    print("|--------------------------------------------------|");
    opcion = int.parse(stdin.readLineSync()!);
    
    switch(opcion) {
    case 1:  
            segundo.agregarCafe(); 
            break;
    case 2: 
            segundo.vaciarCafetera();
            break;
    case 3: 
            segundo.servirCafe();
            break;
    default:
            print("Ingresa una opcion valida");
            break;
    }
  }while(opcion!=0);
}