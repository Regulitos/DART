import 'dart:io';

void main(){

    /*Escribir un programa que almacene el abecedario en una lista, elimine de la lista las 
    letras que ocupen posiciones múltiplos de 3, y muestre por pantalla la lista resultante.*/

     List <String> abecedario = List.generate(26,(index)=>String.fromCharCode('A'.codeUnitAt(0)+index));
     print (abecedario);
     
     List <String> letrasAEliminar = [];
     
     abecedario.forEach((x){
        if((abecedario.indexOf(x)+1)%3==0){
            letrasAEliminar.add(x);
        }
     });
     print(letrasAEliminar);
     
     letrasAEliminar.forEach((x)=> abecedario.remove(x));

     print(abecedario);

}