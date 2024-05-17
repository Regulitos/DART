import 'dart:io';

void main() {
  List<Map<String, String>> aprendiz = [];

  int opcion = 0;

  while (opcion != 7) {
    print("1. Agregar");
    print("2. Ver Aprendiz");
    print("3. Ver nota mas Alta");
    print("4. Ver nota mas Baja");
    print("5. Ver promedio de notas");
    print("6. Ver Aprobados y Reprobados");
    print("7. Salir");
    opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        {
          print("Digite el Documento, El nombre y la nota del alumno");
          Map<String, String> alumno = {
            "Documento": stdin.readLineSync().toString(),
            "Nombre": stdin.readLineSync().toString(),
            "Nota": stdin.readLineSync().toString(),
          };
          aprendiz.add(alumno);
          break;
        }
      case 2:
        {
          print("Ingrese el documento del alumno a buscar: ");
          String documento = stdin.readLineSync().toString();
          for (var alumno in aprendiz) {
            if (alumno["Documento"] == documento) {
              print(alumno["Nombre"]);
              print(alumno["Nota"]);
            }
          }
          break;
        }
      case 3:
        {
          int mayor = 0;
          String mejor = "";
          for (var alumno in aprendiz) {
            int nota = int.parse(alumno["Nota"].toString());
            if (nota > mayor) {
              mayor = nota;
              mejor = alumno["Nombre"].toString();
            }
          }  
          print("Mayor: $mayor nota de $mejor");          
          break;
        }
      case 4:
        {
          int menor = 5;
          String peor = "";
          for (var alumno in aprendiz) {
            int nota = int.parse(alumno["Nota"].toString());
            
            if (nota < menor) {
              menor = nota;
              peor = alumno["Nombre"].toString();
            }
          }
            print("Menor: $menor nota de $peor");
          
          break;
        }
      case 5:
        {           
          double promedio = 0;
          for (var alumno in aprendiz) {
            int nota = int.parse(alumno["Nota"].toString());
            
            promedio += nota;
          }
          promedio = promedio / aprendiz.length;         
          print("Promedio: ${promedio.toStringAsFixed(2)}");          
          break;
        }
      case 6:
        {
          for (var alumno in aprendiz) {
            if (int.parse(alumno["Nota"].toString()) > 3) {
              print('${alumno["Nombre"]}: Aprobado');
            } else {
              print('${alumno["Nombre"]}: Reprobado');
            }
          }
          break;
        }
      case 7:
        {
          break;
        }
      default:
    }
  }
}
