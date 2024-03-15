import 'dart:io';

void main() {

    /*A un trabajador le pagan según las horas trabajadas y un valor por hora. Si la cantidad de 
    horas trabajadas supera las 40 horas, la tarifa por hora se incrementa un 50% para las horas 
    extras. */

    int horasTrabajadas;
    double valorHora;
    double porcentajeHorasExtras = 0.5;
    var total;

    print("Ingrese el total de horas trabajadas: ");
    horasTrabajadas = int.parse(stdin.readLineSync()!);
    print("Ingrese el valor por hora: ");
    valorHora = double.parse(stdin.readLineSync()!);
    
    if(horasTrabajadas>40){
        var totalHorasExtras =((horasTrabajadas-40)*valorHora)+(porcentajeHorasExtras*((horasTrabajadas-40)*valorHora));
        print("El total a pagar por horas extras es: $totalHorasExtras");
        total = totalHorasExtras+(40*valorHora);
        print("El total a pagar al trabajador es: $total");
    }else{
        total = horasTrabajadas*valorHora;
        print("El total a pagar al trabajador es: $total");
    }
}