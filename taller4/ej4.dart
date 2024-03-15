import 'dart:io';

void main(){

    /*Por teclado se ingresa el valor hora de un empleado. Posteriormente se ingresa el nombre
    del empleado, la antigüedad y la cantidad de horas trabajadas en el mes. Se pide calcular
    el importe a cobrar teniendo en cuenta que al total que resuelta de multiplicar el valor
    hora por la cantidad de horas trabajadas, hay que sumarle la cantidad de años trabajados
    multiplicados por $30.000, y al total de todas esas operaciones restarle el 13% en
    concepto de descuentos. Imprimir el recibo correspondiente con el nombre, la
    antigüedad, el valor hora, el total a cobrar en bruto, el total de descuentos y el valor neto
    a cobrar*/

    String nombre;
    int antiguedad;
    int valorHora;
    int horasTrabajadas;
    int valorBruto;
    int descuentos;
    int valorNeto;

    print("Ingrese el nombre del empleado: ");
    nombre = stdin.readLineSync().toString();

    print("Ingrese la antiguedad del empleado en años: ");
    antiguedad = int.parse(stdin.readLineSync().toString());

    print("Ingrese el valor de la hora trabajada por el empleado: ");
    valorHora = int.parse(stdin.readLineSync().toString());

    print("Ingrese la cantidad de horas trabajadas por el empleado en el mes: ");
    horasTrabajadas = int.parse(stdin.readLineSync().toString());

    valorBruto = (horasTrabajadas*valorHora)+(antiguedad*30000);
    descuentos = (valorBruto*13)~/100;
    valorNeto = valorBruto-descuentos;

    print("Nombre:            $nombre");
    print("Antiguedad:        $antiguedad");
    print("Valor hora:        $valorHora");
    print("Total bruto:       $valorBruto");
    print("Total descuentos:  $descuentos");
    print("Total neto:        $valorNeto");


}