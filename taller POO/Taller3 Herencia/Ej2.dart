/*La secretaria del área técnica encarga de los horarios clase, en este periodo solicita un 
software  que  permita  automatizar  la  generación de  dichos  horarios a  partir de  la 
siguiente información: 
• Las asignaturas por curso. 
• Las asignaturas por docente. 
• Las aulas disponibles para clases. 
De cada docente hay que guardar: cédula, nombre, sección departamental y area. 
Cada departamento tiene un nombre. Las asignaturas tienen un nombre y un número 
de créditos, que indica el número de horas de docencia a la semana (1 crédito equivale 
a 3 horas). 
Hay dos tipos de asignaturas: las que son teóricas, y las que son prácticas. Igualmente 
hay dos tipos de aulas: para clases de teoría y para clases de laboratorio (asignaturas 
prácticas). En general, las aulas tienen un nombre, una ubicación y una capacidad. De 
las aulas de teoría interesa conocer el tipo de pupitre (abatible o fijo), y de las de 
prácticas se quiere saber si disponen de altavoces y cámara de videoconferencia. Los 
posibles cursos son cinco, de primero a quinto, pero interesa que el sistema sea abierto 
para poder evolucionar a situaciones con un número de cursos mayor o menor. Hay 
que tener en cuenta que una asignatura sólo puede formar parte de un único curso. Los 
días de clase van de lunes a viernes, y las horas posibles son de 8:30 a 14:30 y de 15:30 
a  21:30.  Las  asignaturas  se  imparten  en  bloques  de  1  hora.Los  docentes  deben 
introducir en el sistema la información de las asignaturas que imparten. También 
deben elegir los tres días para dictar clase. Este dato es utilizado por la secretaria para 
generar  automáticamente  los  horarios.  De  esto, y  de  la  introducción del  resto de 
informaciones necesarias, también se encarga la secretaria. 
El sistema también debe permitir la consulta de horarios por parte de los alumnos.*/

class Departamento {
  String nombre;

  Departamento(this.nombre);
}

class Docente {
  String cedula;
  String nombre;
  String seccionDepartamental;
  Departamento departamento;
  List<Asignatura> asignaturas;
  List<String> diasClase;

  Docente(this.cedula, this.nombre, this.seccionDepartamental, this.departamento)
      : asignaturas = [],
        diasClase = [];

  void agregarAsignatura(Asignatura asignatura) {
    asignaturas.add(asignatura);
  }

  void elegirDiasClase(List<String> dias) {
    diasClase = dias;
  }
}

class Asignatura {
  String nombre;
  int creditos; 
  String tipo; 
  int curso;

  Asignatura(this.nombre, this.creditos, this.tipo, this.curso);

  int get horasSemanales => creditos * 3;
}

class AsignaturaTeorica extends Asignatura {
  AsignaturaTeorica(String nombre, int creditos, int curso)
      : super(nombre, creditos, "Teorica", curso);
}

class AsignaturaPractica extends Asignatura {
  AsignaturaPractica(String nombre, int creditos, int curso)
      : super(nombre, creditos, "Practica", curso);
}

class Aula {
  String nombre;
  String ubicacion;
  int capacidad;

  Aula(this.nombre, this.ubicacion, this.capacidad);
}

class AulaTeoria extends Aula {
  String tipoPupitre; 

  AulaTeoria(String nombre, String ubicacion, int capacidad, this.tipoPupitre)
      : super(nombre, ubicacion, capacidad);
}

class AulaPractica extends Aula {
  bool altavoces;
  bool videoconferencia;

  AulaPractica(String nombre, String ubicacion, int capacidad, this.altavoces, this.videoconferencia)
      : super(nombre, ubicacion, capacidad);
}

class Horario {
  Map<String, Map<String, Aula>> horarios;

  Horario() : horarios = {};

  void generarHorario(List<Docente> docentes, List<Aula> aulas) {
    for (Docente docente in docentes) {
      for (Asignatura asignatura in docente.asignaturas) {
        int horasRestantes = asignatura.horasSemanales;
        for (String dia in docente.diasClase) {
          if (horasRestantes <= 0) break;

          for (int hora = 8; hora < 14; hora++) {
            if (horasRestantes <= 0) break;

            try {
              Aula aulaDisponible = _buscarAulaDisponible(aulas, asignatura);
              _asignarHorario(docente, asignatura, aulaDisponible, dia, hora);
              horasRestantes--;
            } catch (e) {
              print(e);
            }
          }

          for (int hora = 15; hora < 21; hora++) {
            if (horasRestantes <= 0) break;

            try {
              Aula aulaDisponible = _buscarAulaDisponible(aulas, asignatura);
              _asignarHorario(docente, asignatura, aulaDisponible, dia, hora);
              horasRestantes--;
            } catch (e) {
              print(e);
            }
          }
        }
      }
    }
  }

  Aula _buscarAulaDisponible(List<Aula> aulas, Asignatura asignatura) {
    for (Aula aula in aulas) {
      if ((asignatura.tipo == "Teorica" && aula is AulaTeoria) ||
          (asignatura.tipo == "Practica" && aula is AulaPractica)) {
        return aula;
      }
    }
    throw Exception("No hay aulas disponibles para la asignatura ${asignatura.nombre}");
  }

  void _asignarHorario(Docente docente, Asignatura asignatura, Aula aula, String dia, int hora) {
    String clave = "$dia-$hora";
    if (!horarios.containsKey(clave)) {
      horarios[clave] = {};
    }
    horarios[clave]![docente.nombre] = aula;
  }

  void consultarHorario(String docente) {
    for (var entry in horarios.entries) {
      String clave = entry.key;
      Map<String, Aula> valor = entry.value;
      if (valor.containsKey(docente)) {
        print("Dia y hora: $clave, Aula: ${valor[docente]!.nombre}");
      }
    }
  }
}

void main() {
  Departamento deptoInformatica = Departamento("Informatica");
  Docente docente1 = Docente("12345678", "Ana Perez", "Software", deptoInformatica);
  
  AsignaturaTeorica poo = AsignaturaTeorica("Programacion Orientada a Objetos", 4, 2);
  AsignaturaPractica laboratorioPOO = AsignaturaPractica("Laboratorio de POO", 2, 2);

  docente1.agregarAsignatura(poo);
  docente1.agregarAsignatura(laboratorioPOO);
  docente1.elegirDiasClase(["Lunes", "Miercoles", "Viernes"]);

  AulaTeoria aula101 = AulaTeoria("Aula 101", "Edificio A", 30, "Abatible");
  AulaPractica lab202 = AulaPractica("Laboratorio 202", "Edificio B", 25, true, true);

  List<Docente> docentes = [docente1];
  List<Aula> aulas = [aula101, lab202];

  Horario horario = Horario();
  horario.generarHorario(docentes, aulas);

  horario.consultarHorario("Ana Perez");
}
