import 'dart:io';
import 'dart:math';

void main(){

    /*Hacer un algoritmo que genere dos números al azar entre el 0 y el 100, y pida al usuario 
    que calcule e introduzca su suma. Si la respuesta no es correcta, deberá volver a pedirla 
    tantas veces como sea necesario hasta que el usuario acierte. Para generar un numero al 
    azar pueden hacerlo así: numero = AZAR(101).*/

    Random random = Random();

    int numeroAzar = random.nextInt(100);
    int numeroAzar2 = random.nextInt(100);

    int sumaRandom = numeroAzar+numeroAzar2;
    bool acerto = true;
    
    print("Calcule la suma de $numeroAzar y $numeroAzar2:");
    while(acerto){

        
        int suma = int.parse(stdin.readLineSync().toString());

        if(suma==sumaRandom){
            print("Acertaste!");
            acerto = false;
        }else{
            print("Vuelve a intentarlo");
        }
    }

}