import 'dart:io';

void main() {
  Map<String, Map<String, dynamic>> baseDeDatos = {};

  while (true) {
    print("\nMenu:");
    print("1. Anadir cliente");
    print("2. Eliminar cliente");
    print("3. Mostrar cliente");
    print("4. Listar todos los clientes");
    print("5. Listar clientes preferentes");
    print("6. Terminar");

    print("Seleccione una opcion: ");
    String opcion = stdin.readLineSync()!;

    switch (opcion) {
      case '1':
        agregarCliente(baseDeDatos);
        break;
      case '2':
        eliminarCliente(baseDeDatos);
        break;
      case '3':
        mostrarCliente(baseDeDatos);
        break;
      case '4':
        listarClientes(baseDeDatos);
        break;
      case '5':
        listarClientesPreferentes(baseDeDatos);
        break;
      case '6':
        print("Hasta luego!");
        return;
      default:
        print("Opcion no valida. Por favor, seleccione una opcion del 1 al 6.");
    }
  }
}

void agregarCliente(Map<String, Map<String, dynamic>> baseDeDatos) {
  print("Ingrese el NIF del cliente: ");
  String nif = stdin.readLineSync()!;
  
  print("Ingrese el nombre del cliente: ");
  String nombre = stdin.readLineSync()!;
  
  print("Ingrese la direccion del cliente: ");
  String direccion = stdin.readLineSync()!;
  
  print("Ingrese el telefono del cliente: ");
  String telefono = stdin.readLineSync()!;
  
  print("Ingrese el correo del cliente: ");
  String correo = stdin.readLineSync()!;
  
  print("¿Es cliente preferente? (true/false): ");
  bool preferente = stdin.readLineSync()!.toLowerCase() == 'true';

  Map<String, dynamic> datosCliente = {
    'nombre': nombre,
    'direccion': direccion,
    'telefono': telefono,
    'correo': correo,
    'preferente': preferente,
  };

  baseDeDatos[nif] = datosCliente;
  print("Cliente agregado exitosamente.");
}

void eliminarCliente(Map<String, Map<String, dynamic>> baseDeDatos) {
  print("Ingrese el NIF del cliente que desea eliminar: ");
  String nif = stdin.readLineSync()!;
  
  if (baseDeDatos.containsKey(nif)) {
    baseDeDatos.remove(nif);
    print("Cliente eliminado exitosamente.");
  } else {
    print("No se encontro ningun cliente con el NIF proporcionado.");
  }
}

void mostrarCliente(Map<String, Map<String, dynamic>> baseDeDatos) {
  print("Ingrese el NIF del cliente que desea mostrar: ");
  String nif = stdin.readLineSync()!;
  
  Map<String, dynamic>? datosCliente = baseDeDatos[nif];
  
  if (datosCliente != null) {
    print("\nDatos del cliente:");
    print("NIF: $nif");
    datosCliente.forEach((clave, valor) {
      print("$clave: $valor");
    });
  } else {
    print("No se encontro ningun cliente con el NIF proporcionado.");
  }
}

void listarClientes(Map<String, Map<String, dynamic>> baseDeDatos) {
  print("\nLista de todos los clientes:");
  baseDeDatos.forEach((nif, datosCliente) {
    print("NIF: $nif, Nombre: ${datosCliente['nombre']}");
  });
}

void listarClientesPreferentes(Map<String, Map<String, dynamic>> baseDeDatos) {
  print("\nLista de clientes preferentes:");
  baseDeDatos.forEach((nif, datosCliente) {
    if (datosCliente['preferente'] == true) {
      print("NIF: $nif, Nombre: ${datosCliente['nombre']}");
    }
  });
}
