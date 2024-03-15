import 'dart:io';

void main() {
    /*Realizar un algoritmo que permita mostrar los números impares entre una variable X y
    una variable Y*/

    print("Escriba el primer numero");
    int x = int.parse(stdin.readLineSync().toString());
    
    print("Escriba el segundo numero");
    int y = int.parse(stdin.readLineSync().toString());

    if(x<y){
        if(x%2==0){
            print("Los numeros impartes entre $x y $y son: ");
            for(int i = x+1; i<y;){
                
                if(i>=y){
                    break;
                }
                print("$i ");
                i=i+2;
            }
        }else{
            print("Los numeros impartes entre $x y $y son: ");
            for(int i = x; i<y;){
                i=i+2;
                if(i>=y){
                    break;
                }
                print("$i ");
            }
        }
    }else{
        if(y%2==0){
            print("Los numeros impartes entre $y y $x son: ");
            for(int i = y+1; i<x;){
                
                if(i>=x){
                    break;
                }                
                print("$i ");
                i=i+2;
            }
        }else{
             print("Los numeros impartes entre $y y $x son: ");
            for(int i = y; i<x;){
                i=i+2;
                if(i>=x){
                    break;
                }
                print("$i ");
            }
        }
    }

}