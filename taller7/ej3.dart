import 'dart:io';

void main(){

    /*En una determinada empresa, sus empleados son evaluados al final de cada año y reciben 
    un bono en dinero de acuerdo con los puntos acumulados por desempeño, puntualidad y 
    actitud  entre  otras.  Los  puntos  que  pueden  conseguir  los  empleados  pueden  ser 
    0(inaceptable),20 (regular), 40(aceptable), 60(sobresaliente) o más.  La cantidad de dinero 
    conseguida en cada nivel es de $200.000 multiplicada por la puntuación del nivel. Escribir 
    un programa que lea la puntuación del usuario e indique su nivel de rendimiento, así como 
    la cantidad de dinero que recibirá el usuario. Si el usuario tiene menos de 20 puntos debe 
    recibir un llamado de atención. */

    print("Ingrese la puntuación del empleado: ");
    int puntuacion = int.parse(stdin.readLineSync()!);
    int bono = 200000;
    switch(puntuacion){        
        case >= 0 && < 20:
            print("El desempeño del empleado es inaceptable y recibira un llamado de atencion");
            break;
        case >=20 && < 40:
            bono=bono*1;
            print("El empleado tiene un desempeño regular y tiene un bono por $bono");
            break;
        case >=40 && < 60:
            bono=bono*2;
            print("El empleado tiene un desempeño aceptable y tiene un bono por $bono");
            break;
        case 60:
            bono=bono*3;
            print("El empleado tiene un desempeño sobresaliente y tiene un bono por $bono");
            break;
        default:
            print("El empleado no puede ser evaluado");
            break;
    }
}