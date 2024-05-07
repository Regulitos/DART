/*Desarrolla una clase Cancion con los siguientes atributos: titulo: una variable String 
que guarda el título de la canción. autor: una variable String que guarda el autor de la 
canción. y los siguientes métodos:  
• Cancion que recibe como parámetros el título y el autor de la canción. 
• dameTitulo: devuelve el título de la canción.  
• dameAutor: devuelve el autor de la canción.  
• ponTitulo:  establece el título de la canción.  
• ponAutor: establece el autor de la canción. */

class Cancion{
  String titulo;
  String autor;

  Cancion(this.titulo,this.autor){
    this.titulo = titulo;
    this.autor = autor;
  }

  setAutor(ponAutor){
     autor=ponAutor;
  }

  setTitulo(ponTitulo){
     titulo=ponTitulo ;
  }

  getTitulo(){
    return titulo;
  }

  getAutor(){
    return autor;
  }
}

void main(){
  Cancion nueva = new Cancion("It's my life","Bon Jovi");

  print("El autor de la cancion es ${nueva.getAutor()}");
  print("El titulo de la cancion es ${nueva.getTitulo()}");
  nueva.setAutor("Coolio y Kylian Mash");
  nueva.setTitulo("Gangsta's Paradise");
  print("El autor de la cancion es ${nueva.getAutor()}");
  print("El titulo de la cancion es ${nueva.getTitulo()}");
}
