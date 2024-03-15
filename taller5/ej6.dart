import 'dart:io';

void main() {

    /*Crea un algoritmo que pida al usuario una contraseña, de forma repetitiva mientras que 
    no introduzca "1234". Cuando finalmente escriba la contraseña correcta, se le dirá 
    "Bienvenido" y terminará el programa.   */

    bool contrasena = true;
    while(contrasena){
        print("Ingrese su contraseña:");
        String pass = stdin.readLineSync().toString();
        if(pass == "1234"){
            contrasena = false;
            print("Bienvenido");
        }else{
            print("Introduzca la contraseña correcta");
        }
    }
}