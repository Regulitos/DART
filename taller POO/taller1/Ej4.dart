/*Crea una clase Libro que modele la información que se mantiene en una biblioteca 
sobre cada libro: título, autor (usa la clase Persona), ISBN, páginas, edición, editorial , 
lugar (ciudad y país) y fecha de edición (usa la clase Fecha). La clase debe 
proporcionar los siguientes servicios:  
• método para leer la información y método para mostrar la información. Este 
último método mostrará la información del libro.   */

import 'dart:io';


class Persona {
  String nombre;
  String apellido;

  Persona(this.nombre, this.apellido);

  String toString() {
    return '$nombre $apellido';
  }
}


class Fecha {
  int dia;
  int mes;
  int anho;

  Fecha(this.dia, this.mes, this.anho);

  String toString() {
    return '$dia/$mes/$anho';
  }
}


class Libro {
  String titulo;
  Persona autor;
  String isbn;
  int paginas;
  int edicion;
  String editorial;
  String lugar;
  Fecha fechaEdicion;

  Libro(this.titulo, this.autor, this.isbn, this.paginas, this.edicion, this.editorial, this.lugar, this.fechaEdicion);

  void leerInformacion() {
    print('Ingrese el título del libro: ');
    titulo = stdin.readLineSync()!;

    print('Ingrese el nombre del autor: ');
    var nombreAutor = stdin.readLineSync()!;
    print('Ingrese el apellido del autor: ');
    var apellidoAutor = stdin.readLineSync()!;
    autor = Persona(nombreAutor, apellidoAutor);

    print('Ingrese el ISBN: ');
    isbn = stdin.readLineSync()!;

    print('Ingrese el número de páginas: ');
    paginas = int.parse(stdin.readLineSync()!);

    print('Ingrese la edición: ');
    edicion = int.parse(stdin.readLineSync()!);

    print('Ingrese la editorial: ');
    editorial = stdin.readLineSync()!;

    print('Ingrese el lugar (ciudad, país): ');
    lugar = stdin.readLineSync()!;

    print('Ingrese la fecha de edición (formato: dd/mm/yyyy): ');
    var fechaEdicionString = stdin.readLineSync()!.split('/');
    fechaEdicion = Fecha(int.parse(fechaEdicionString[0]), int.parse(fechaEdicionString[1]), int.parse(fechaEdicionString[2]));
  }

  void mostrarInformacion() {
    print('Título: $titulo');
    print('Autor: $autor');
    print('ISBN: $isbn');
    print('Páginas: $paginas');
    print('Edición: $edicion');
    print('Editorial: $editorial');
    print('Lugar: $lugar');
    print('Fecha de edición: $fechaEdicion');
  }
}

void main() {
  var libro = Libro('', Persona('', ''), '', 0, 0, '', '', Fecha(0, 0, 0));

  libro.leerInformacion();
  libro.mostrarInformacion();
}
