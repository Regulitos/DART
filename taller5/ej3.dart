import 'dart:io';

void main(){

    //Hacer un algoritmo que muestre los 10 primeros números impares empezando por el 3

    dynamic contarNum = 0;
    dynamic numero = 3;
    while(contarNum<10){

        if(numero%2==1){
            contarNum++;
            print(numero);
        }        
        numero++;
    }
}