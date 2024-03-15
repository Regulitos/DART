import 'dart:io';

main(){
    // Solicitar precio de compra y porcentaje de descuento y entregar precio con descuento

    double precio, descuento;
    double precioConDescuento;

    print('Digite el precio de compra:');
    precio = double.parse(stdin.readLineSync().toString());
    print('Digite el porcentaje de descuento:');
    descuento = double.parse(stdin.readLineSync().toString());
    descuento=descuento/100;
    precioConDescuento=precio-(precio*descuento);
    print('El precio con descuento es: $precioConDescuento');
}