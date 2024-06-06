class ElementoMultimedia {
  String titulo;
  String genero;
  String pais;

  ElementoMultimedia(this.titulo, this.genero, this.pais);

  String toString() {
    return 'Titulo: $titulo, Genero: $genero, Pais: $pais';
  }
}

class Pelicula extends ElementoMultimedia {
  Pelicula(String titulo, String genero, String pais) : super(titulo, genero, pais);
}

class ServicioPeliculas {
  List<Pelicula> peliculas = [];

  void crearPelicula(String titulo, String genero, String pais) {
    Pelicula nuevaPelicula = Pelicula(titulo, genero, pais);
    peliculas.add(nuevaPelicula);
    print('Pelicula agregada: $nuevaPelicula');
  }

  void leerPeliculas() {
    if (peliculas.isEmpty) {
      print('No se encontraron peliculas.');
    } else {
      for (var pelicula in peliculas) {
        print(pelicula.toString());
      }
    }
  }

  void actualizarPelicula(String tituloAntiguo, String tituloNuevo, String generoNuevo, String paisNuevo) {
    for (var pelicula in peliculas) {
      if (pelicula.titulo == tituloAntiguo) {
        pelicula.titulo = tituloNuevo;
        pelicula.genero = generoNuevo;
        pelicula.pais = paisNuevo;
        print('Pelicula actualizada: $pelicula');
        return;
      }
    }
    print('Pelicula no encontrada.');
  }

  void eliminarPelicula(String titulo) {
    peliculas.removeWhere((pelicula) => pelicula.titulo == titulo);
    print('Pelicula eliminada: $titulo');
  }
}

void main() {
  ServicioPeliculas servicioPeliculas = ServicioPeliculas();

  servicioPeliculas.crearPelicula('Inception', 'Sci-Fi', 'USA');
  servicioPeliculas.crearPelicula('Parasite', 'Thriller', 'South Korea');

  print('Leyendo todas las peliculas:');
  servicioPeliculas.leerPeliculas();

  servicioPeliculas.actualizarPelicula('Inception', 'Inception Actualizada', 'Sci-Fi', 'USA');

  print('Leyendo todas las peliculas despues de la actualizacion:');
  servicioPeliculas.leerPeliculas();

  servicioPeliculas.eliminarPelicula('Parasite');

  print('Leyendo todas las peliculas despues de la eliminacion:');
  servicioPeliculas.leerPeliculas();
}
