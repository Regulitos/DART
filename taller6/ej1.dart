import 'dart:io';

void main(){

    /*Realizar un algoritmo que permita saber el porcentaje  de  hombres y de mujeres que  hay 
    estudiando  en  el  SENA.  Si  el  porcentaje  de  hombres  es  mayor  al  de  mujeres  se  deberá 
    mostrar un mensaje que diga. Mayor cantidad de hombres y muestre el porcentaje, en caso 
    contrario  se  deberá  mostrar  un  mensaje  que  diga  mayor  cantidad  de  mujeres  y  su 
    porcentaje.*/ 

    int hombres;
    int mujeres;
    int total;

    print("Ingrese la cantidad de Hombres que hay:");
    hombres = int.parse(stdin.readLineSync().toString());
    print("Ingrese la cantidad de Mujeres que hay:");
    mujeres = int.parse(stdin.readLineSync().toString());
    total = hombres + mujeres;

    if(hombres > mujeres){
        double porcentaje = (hombres/total)*100;
        String resultado = porcentaje.toStringAsFixed(2);
        print("Mayor cantidad de hombres con un $resultado%");
    }else{
        double porcentaje = (mujeres/total)*100;
        String resultado = porcentaje.toStringAsFixed(2);
        print("Mayor cantidad de mujeres con un $resultado%");
    }
}