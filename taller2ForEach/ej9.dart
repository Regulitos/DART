import 'dart:io';

void main() {

    /*Escribir un programa que gestione las facturas pendientes de cobro de una empresa. 
    Las facturas se almacenarán en un diccionario donde la clave de cada factura será el 
    número  de  factura  y  el  valor  el  coste  de  la  factura.  El  programa  debe  preguntar  al 
    usuario  si  quiere  añadir  una  nueva  factura,  pagar  una  existente  o  terminar.  Si  desea 
    añadir una nueva factura se preguntará por el número de factura y su coste y se añadirá 
    al diccionario. Si se desea pagar una factura se preguntará por el número de factura y 
    se eliminará del diccionario. Después de cada operación el programa debe mostrar por 
    pantalla la cantidad cobrada hasta el momento y la cantidad pendiente de cobro.*/

    // Diccionario para almacenar las facturas
    Map<int, double> facturas = {};
    
    double cantidadCobrada = 0.0;

    // Bucle principal del programa
    while (true) {
        // Mostrar el menú de opciones
        print('¿Qué desea hacer?');
        print('1. Añadir una nueva factura');
        print('2. Pagar una factura existente');
        print('3. Terminar');

        // Obtener la opción del usuario
        String opcion = stdin.readLineSync()!;

        // Realizar la acción correspondiente según la opción seleccionada
        switch (opcion) {
        case '1':
            // Añadir una nueva factura
            print('Ingrese el número de factura:');
            int numeroFactura = int.parse(stdin.readLineSync()!);
            print('Ingrese el coste de la factura:');
            double costeFactura = double.parse(stdin.readLineSync()!);
            facturas[numeroFactura] = costeFactura;
            print('Factura añadida con éxito.');
            break;
        case '2':
            // Pagar una factura existente
            print('Ingrese el número de factura que desea pagar:');
            int numeroFactura = int.parse(stdin.readLineSync()!);
            if (facturas.containsKey(numeroFactura)) {
            cantidadCobrada += facturas[numeroFactura]!;
            facturas.remove(numeroFactura);
            print('Factura pagada con éxito.');
            } else {
            print('La factura especificada no existe.');
            }
            break;
        case '3':
            // Terminar el programa
            print('Cantidad cobrada hasta el momento: \$${cantidadCobrada.toStringAsFixed(2)}');
            print('Cantidad pendiente de cobro: \$${facturas.values.reduce((a, b) => a + b).toStringAsFixed(2)}');
            print('¡Hasta luego!');
            return;
        default:
            print('Opción no válida. Por favor, seleccione una opción válida.');
        }
    }
}