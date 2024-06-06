class Libro {
  String titulo;
  String categoria;
  String tipo;

  Libro(this.titulo, this.categoria, this.tipo);

  String toString() {
    return 'Titulo: $titulo, Categoria: $categoria, Tipo: $tipo';
  }
}

class ListaLibros {
  List<Libro> libros = [];

  int numeroLibros() {
    return libros.length;
  }

  void insertarLibro(Libro libro) {
    int posicion = libros.indexWhere((l) => l.titulo.compareTo(libro.titulo) > 0);
    if (posicion == -1) {
      libros.add(libro);
    } else {
      libros.insert(posicion, libro);
    }
    print('Libro insertado: $libro');
  }

  void eliminarLibro(int posicion) {
    if (posicion >= 0 && posicion < libros.length) {
      Libro libroEliminado = libros.removeAt(posicion);
      print('Libro eliminado: $libroEliminado');
    } else {
      print('Posicion no valida.');
    }
  }

  Libro? obtenerLibro(int posicion) {
    if (posicion >= 0 && posicion < libros.length) {
      return libros[posicion];
    } else {
      print('Posicion no valida.');
      return null;
    }
  }

  int buscarLibro(String parteTitulo) {
    for (int i = 0; i < libros.length; i++) {
      if (libros[i].titulo.toLowerCase().contains(parteTitulo.toLowerCase())) {
        return i;
      }
    }
    return -1;
  }

  void imprimirLibros() {
    if (libros.isEmpty) {
      print('No hay libros en la lista.');
    } else {
      for (var libro in libros) {
        print(libro.toString());
      }
    }
  }
}

void main() {
  ListaLibros listaLibros = ListaLibros();

  listaLibros.insertarLibro(Libro('El Alquimista', 'Espiritualidad', 'Historica'));
  listaLibros.insertarLibro(Libro('Cien Anos de Soledad', 'Novela', 'Realista'));
  listaLibros.insertarLibro(Libro('1984', 'Novela', 'Ciencia Ficcion'));
  listaLibros.insertarLibro(Libro('El Poder del Ahora', 'Psicologia', 'Autoayuda'));

  print('Numero de libros: ${listaLibros.numeroLibros()}');

  print('\nLista de libros:');
  listaLibros.imprimirLibros();

  print('\nEliminar libro en posicion 2:');
  listaLibros.eliminarLibro(2);

  print('\nLista de libros despues de eliminar:');
  listaLibros.imprimirLibros();

  print('\nBuscar libro con titulo que contiene "poder":');
  int posicion = listaLibros.buscarLibro('poder');
  if (posicion != -1) {
    print('Libro encontrado en posicion: $posicion');
  } else {
    print('Libro no encontrado.');
  }

  print('\nObtener libro en posicion 1:');
  Libro? libro = listaLibros.obtenerLibro(1);
  if (libro != null) {
    print('Libro obtenido: $libro');
  }
}
