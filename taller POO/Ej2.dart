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

  }

  void vaciarCafetera(){
    bool ret = true;
    while (ret){
      print("Cuantos c.c. va a servir?:");
      int servir = int.parse(stdin.readLineSync()!);
      if(servir > cant_max){
        print("No se puede servir mas cafe de el que permite hacer la cafetera.");
      }
    }
  }

  void agregarCafe(){
    bool ret = true;
    while(ret){
      print("Ingrese la cantidad de c.c. de cafe que desea agregr?");
      int add = int.parse(stdin.readLineSync()!);
      if((add+cant_actual) > cant_max){
        print("La cantidad que se alcanza supera la capacidad maxima el de la cafetera.");
      }else{
        cant_actual+=add;
        ret = false;
      }
    }
  }
}

void main(){
  Cafetera segundo = new Cafetera(1000,0);
}