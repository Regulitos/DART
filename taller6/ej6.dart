import 'dart:io';

void main(){

    /*Realizar  un  algoritmo  que  le  solicite  al  usuario  su  usuario  y  contraseña,  si  los  datos 
    ingresados son correctos le de un mensaje de bienvenida, de lo contrario solo tendrá dos 
    intentos mas para ingresar correctamente los datos. */

    String usuario = "sena2022";
    String contrasena = "instru2022*";

    int intentos = 3;
    bool correcto = false;

    while(intentos >0 && !correcto){

        print("Ingrese el usuario");
        String usuarioTemp = stdin.readLineSync()!;
        print("Ingrese la contrasena");
        String contrasenaTemp = stdin.readLineSync()!;
        if(usuarioTemp == usuario && contrasenaTemp == contrasena){
            print("Bienvenido $usuarioTemp");
            correcto = true;
        }else{
            intentos--;
            print("Usuario o contrasena incorrectos, te quedan $intentos intentos");
            if(intentos == 0){
                print("Ip bloqueada, exceso de intentos");
            }
        }
    }
}