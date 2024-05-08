//Construir  una  clase  Factura  que  descienda  de  la  clase  Precio  y  que  incluya  dos  atributos 
//específicos llamados emisor y cliente y, al menos, un método llamado imprimirFactura.

import 'dart:io';


class Precio {
  double valor;

  Precio(this.valor);

  void mostrarPrecio() {
    print('Valor: \$${valor.toStringAsFixed(2)}');
  }
}

class Factura extends Precio {
  String emisor;
  String cliente;

  Factura(double valor, this.emisor, this.cliente) : super(valor);

  void imprimirFactura() {
    print('Factura:');
    print('Emisor: $emisor');
    print('Cliente: $cliente');
    mostrarPrecio(); 
  }

  void cambiarCliente(String nuevoCliente) {
    cliente = nuevoCliente;
    print('Cliente actualizado a: $cliente');
  }
}

void main() {
  bool salir = false;

  while (!salir) {
    print('Seleccione una opcion:');
    print('1. Crear nueva factura');
    print('2. Salir');

    var opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print('Ingrese el valor de la factura:');
        var valor = double.parse(stdin.readLineSync()!);
        print('Ingrese el emisor de la factura:');
        var emisor = stdin.readLineSync()!;
        print('Ingrese el cliente de la factura:');
        var cliente = stdin.readLineSync()!;
        
        Factura factura = Factura(valor, emisor, cliente);
        factura.imprimirFactura();

        print('Desea cambiar el cliente de la factura? (s/n)');
        var respuesta = stdin.readLineSync()!.toLowerCase();
        if (respuesta == 's') {
          print('Ingrese el nuevo nombre del cliente:');
          var nuevoCliente = stdin.readLineSync()!;
          factura.cambiarCliente(nuevoCliente);
          factura.imprimirFactura();
        }
        break;

      case 2:
        salir = true;
        break;

      default:
        print('Opción no valida.');
        break;
    }
  }
}
