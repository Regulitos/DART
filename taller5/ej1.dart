import 'dart:io';

void main() {
    //Hacer un algoritmo que muestre los 10 primeros números pares empezando por el 2.    
    dynamic contarNum = 0;
    dynamic numero = 2;
    while(contarNum<10){

        if(numero%2==0){
            contarNum++;
            print(numero);
        }        
        numero++;
    }
}