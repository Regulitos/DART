import 'dart:io';

void main (){
    
    
    print("Ingrese cuantos numeros impares desea sumar");
    int numeros = int.parse(stdin.readLineSync()!);

    
    int suma = sumar(numeros);

    print("La suma es $suma ");
}

int sumar(int x){
    int suma = 0;
    for(int i = 1; x>0; i++){
        if(i%2==1){
            x--;
            suma+=i;
        }
    }
    return suma;
}