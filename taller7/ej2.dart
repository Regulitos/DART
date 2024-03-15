import 'dart:io';

void main(){

    /*Los aprendices de una tecnología en el SENA se han dividido en dos grupos A y B, de acuerdo 
    al sexo y el nombre. El grupo A está formado por las mujeres con un nombre anterior a la M 
    y los hombres con un nombre posterior a la N y el grupo B por el resto. Escribir un programa 
    que pregunte al usuario su nombre y sexo, y muestre por pantalla el grupo que le 
    corresponde.*/    

        var again = true;
        while(again) {
            print('Ingrese su nombre: ');
            String nombre = stdin.readLineSync()!;
            
            print('Ingrese su sexo (M/F): ');
            String sexo = stdin.readLineSync()!;
            
            String grupo = determinarGrupo(nombre, sexo);
            
            print('Usted pertenece al grupo $grupo.');

            print('Desea agregar otra persona? S/N');
            String respuesta = stdin.readLineSync()!;
            if(respuesta=='S' || respuesta=='s'){    
            }
            else if(respuesta=='N' || respuesta=='n'){
                again = false;
            }else{
                print('Ingrese una letra valida');
            }
        }    
}

String determinarGrupo(String nombre, String sexo) {
        
        String nombreMinusculas = nombre.toLowerCase();
        
        if (sexo.toLowerCase() == 'f') {
            
            if (nombreMinusculas.codeUnitAt(0) < 'm'.codeUnitAt(0)) {
            return 'A';
            } else {
            return 'B';
            }
        } else if (sexo.toLowerCase() == 'm') {
            
            if (nombreMinusculas.codeUnitAt(0) > 'n'.codeUnitAt(0)) {
            return 'A';
            } else {
            return 'B';
            }
        } else {
            return 'No se puede determinar el grupo debido a una entrada inválida.';
        }
}