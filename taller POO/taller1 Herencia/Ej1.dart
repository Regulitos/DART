/*Escriba una clase Multimedia para almacenar información de los objetos de tipo multimedia 
(películas, discos, mp3,mp4...). Esta clase contiene título, autor, formato, y duración como 
atributos.  El  formato  puede  ser  uno  de  los  siguientes:  wav,  mp3,  midi,  avi,  mov,  mpg, 
cdAudio y dvd. El valor de todos los atributos se pasa por parámetro en el momento de crear 
el objeto. Esta clase tiene además, un método para devolver cada uno de los atributos y un 
método toString() que devuelve la información del objeto. Por último, un método equals() 
que recibe un objeto de tipo Multimedia y devuelve true en caso de que el título y el autor 
sean iguales y false en caso contrario.*/

class Multimedia {
  String titulo;
  String autor;
  String formato;
  double duracion;

  Multimedia(this.titulo, this.autor, this.formato, this.duracion);

  String getTitulo() {
    return titulo;
  }

  String getAutor() {
    return autor;
  }

  String getFormato() {
    return formato;
  }

  double getDuracion() {
    return duracion;
  }

  String toString() {
    return 'Título: $titulo\nAutor: $autor\nFormato: $formato\nDuración: $duracion';
  }

  bool equals(Multimedia other) {
    return this.titulo == other.titulo && this.autor == other.autor;
  }
}

void main() {
  var multimedia1 = Multimedia('Película1', 'Autor1', 'avi', 120.5);
  var multimedia2 = Multimedia('Película2', 'Autor2', 'mp4', 90.0);
  
  print(multimedia1.toString());
  print(multimedia2.toString());
  
  print('Son iguales: ${multimedia1.equals(multimedia2)}');
}
