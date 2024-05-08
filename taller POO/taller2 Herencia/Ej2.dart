//La empresa informática “INPUT TECHNOLOGIES” necesita llevar un registro de todos sus 
//empleados  que  se  encuentran  en  la  oficina  central,  para  eso  ha  creado  un  diagrama  de 
//clases que debe incluir Empleado, y Programador.


class Empleado {
  String nombre;
  int edad;
  String cargo;

  Empleado(this.nombre, this.edad, this.cargo);

  void mostrarInformacion() {
    print('Nombre: $nombre');
    print('Edad: $edad');
    print('Cargo: $cargo');
  }
}

class Programador extends Empleado {
  List<String> lenguajes;

  Programador(String nombre, int edad, String cargo, this.lenguajes)
      : super(nombre, edad, cargo);

  @override
  void mostrarInformacion() {
    super.mostrarInformacion();
    print('Lenguajes de programacion:');
    for (dynamic lenguaje in lenguajes) {
      print('- $lenguaje');
    }
  }
}

void main() {
  Programador programador = Programador('Juan', 24, 'Programador', ['Dart', 'Java', 'C++']);
  programador.mostrarInformacion();
}
