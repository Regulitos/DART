import "dart:math";

class Persona {
  String cedula;
  String nombres;
  int edad;
  String sexo;
  int asistencia;
  int faltas;

  Persona(this.cedula, this.nombres, this.edad, this.sexo, this.asistencia, this.faltas);
}

class Instructor extends Persona {
  String materia_asig;
  bool disp;
  int alumnos;

  Instructor(String cedula, String nombres, int edad, String sexo,
             int asistencia, int faltas, this.materia_asig, this.disp,
             this.alumnos) : super(cedula, nombres, edad, sexo, asistencia, faltas);
}

class Aprendiz extends Persona {
  double nota;
  
  Aprendiz(String cedula, String nombres, int edad, String sexo,
           int asistencia, int faltas, this.nota)
           : super(cedula, nombres, edad, sexo, asistencia, faltas);

  bool aprobado() {
    double porcentajeAsistencia = asistencia / (asistencia + faltas);
    return nota > 3 && porcentajeAsistencia > 0.7;
  }
}

class Ambiente {
  int id;
  int max_capacidad;
  String sede;
  int piso;
  bool disp;

  Ambiente(this.id, this.max_capacidad, this.sede, this.piso, this.disp);

  void clase(List<Aprendiz> aprendices, Instructor instructor) {
    if (aprendices.length > max_capacidad) {
      print("No puede darse clases debido a que los alumnos superan la capacidad del ambiente.");
    } else if (!instructor.disp) {
      print("No se puede dar clases debido a que el instructor no esta disponible.");
    } else if ((instructor.alumnos / aprendices.length) < 0.6) {
      print("No se puede dar clases debido a que no hay suficientes alumnos para dar clase.");
    } else {
      print("La clase puede proceder.");
    }
  }
}

void main() {
  Random random = Random();
  bool disp = random.nextInt(9) + 1 > 2;

  Instructor edison = Instructor("121545", "Edison Sandoval", 35, "M", 30, 4, "POO", disp, 20);
  Ambiente a101 = Ambiente(101, 20, "Comercio", 1, true);

  List<Aprendiz> aprendices = [];
  int presentes = random.nextInt(15) + 5;
  for (int i = 0; i < presentes; i++) {
    double nota = random.nextDouble() * 5;
    int asistencia = random.nextInt(25) + 5;
    String sexo = i % 2 == 0 ? "F" : "M";
    aprendices.add(Aprendiz('${i + 1}', "Aprendiz ${i + 1}", 19, sexo, 30, asistencia, nota));
  }

  a101.clase(aprendices, edison);
}
