import 'dart:io';

void main() {
  List<Map<String, String>> usuario = [];

  int opcion = 0;

  while (opcion != 5) {
    print("1. Guardar");
    print("2. Mostrar");
    print("3. Modificar");
    print("4. Eliminar");
    print("5. Salir");
    opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:        
        print("Ingrese la cedula a Guardar:");
        String docUsuario = stdin.readLineSync()!;
        bool exists = false;
        for(var ver in usuario){
          if(docUsuario==ver["Cedula"]){
            print("La cedula ya existe");
            exists = true;
            break;
          }
        }
        if(exists){
          break;
        }
        print("Ingrese el nombre del usuario");
        usuario.add(
            {"Cedula": docUsuario, "Nombre": stdin.readLineSync()!});
        print("Guardado con Exito");
        break;
      case 2:
        print("Ingrese la cedula de el Usuario:");
        String docUsuario = stdin.readLineSync()!;
        bool encontrado = false;
        for(var persona in usuario){          
          if(docUsuario==persona["Cedula"]){
            print('Nombre: ${persona["Nombre"]}');
            print('Cedula: ${persona["Cedula"]}');
            encontrado = true;
          }
          }
        if(!encontrado){
          print("Usuario no encontrado");
        }
        break;
      case 3:
        print("Ingrese la cedula de el Usuario:");
        String docUsuario = stdin.readLineSync()!;
        bool encontrado = false;
        usuario.forEach((temp) { 
          if(docUsuario==temp["Cedula"]){
            print("1- Modificar nombre.");
            print("2- Modificar cedula.");
            print("3- Modificar ambos");
            int opcionM = int.parse(stdin.readLineSync()!);

            if(opcionM==1){
              print("Ingrese nuevo Nombre.");
              temp["Nombre"]=stdin.readLineSync()!;
            }else if(opcionM==2){
              print("Ingrese nuevo Cedula.");
              temp["Cedula"]=stdin.readLineSync()!;
            }else if(opcionM==3){
              print("Ingrese nuevo Nombre.");
              temp["Nombre"]=stdin.readLineSync()!;
              print("Ingrese nuevo Cedula.");
              temp["Cedula"]=stdin.readLineSync()!;
            }            
            print("Modificado con Exito");
            encontrado = true;
          }
        });
        if(!encontrado){
          print("Usuario no encontrado");
        }
        break;
      case 4:
        print("Ingrese la cedula de el Usuario:");
        String docUsuario = stdin.readLineSync()!;
        bool encontrado = false;
        for(var persona in usuario){ 
          if(docUsuario==persona["Cedula"]){
            usuario.remove(persona);
            print("Eliminado con Exito");
            encontrado = true;
            break;
          }
        }
        if(!encontrado){
          print("Usuario no encontrado");
        }
        break;
      case 5:
        break;
    }
  }
}
