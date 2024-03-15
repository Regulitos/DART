import 'dart:io';

void main() {

    /*Un almacén ha puesto en oferta la venta al por mayor de cierto producto, ofreciendo un 
    descuento del 15% por la compra de más de 3 docenas y 10% en caso contrario. Además 
    por la compra de más de 3 docenas se obsequia una unidad del producto por cada docena 
    en exceso sobre 3. Diseñe un algoritmo que determine el monto de la compra, el monto del 
    descuento, el monto a pagar y el número de unidades de obsequio por la compra de cierta 
    cantidad de docenas del producto.*/

    
    double precioProducto = 5000; 
    double descuentoPorDocenas = 0.15; 
    double descuentoNormal = 0.10; 

    print("Ingrese la cantidad de docenas a comprar");
    int cantidadDocenas = int.parse(stdin.readLineSync()!); 

    
    double precioTotal = cantidadDocenas * 12 * precioProducto;

   
    double descuento;
    if (cantidadDocenas > 3) {
        descuento = precioTotal * descuentoPorDocenas;
    } else {
        descuento = precioTotal * descuentoNormal;
    }

    double precioFinal = precioTotal - descuento;

   
    int unidadesObsequio = 0;
    if (cantidadDocenas > 3) {
        unidadesObsequio = cantidadDocenas - 3;
    }

    
    print('Monto de la compra: \$${precioTotal.toStringAsFixed(0)}');
    print('Descuento aplicado: \$${descuento.toStringAsFixed(0)}');
    print('Monto a pagar: \$${precioFinal.toStringAsFixed(0)}');
    print('Número de unidades de obsequio: ${unidadesObsequio}');
}