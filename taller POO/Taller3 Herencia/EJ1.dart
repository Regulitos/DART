import "dart:io";
import "dart:math";


class Persona(){
  String cedula;
  String nombres;
  int edad;
  String sexo;
  int asistencia;
  int faltas;

  Persona(this.cedula, this.nombres, this.edad, this.sexo, this.asistencia, this.faltas){
    this.cedula = cedula;
    this.nombres = nombres;
    this.edad = edad;
    this.sexo = sexo;
    this.asistencia = asistencia;
    this.faltas = faltas;
  }
}

class Instructor extends Persona(){
  String materia_asig;
  bool disp;
  int alumnos;

  Instructor(String cedula, String nombres, int edad, String sexo,
             int asistencia, int faltas,this.materia_asig, this.disp
             , this.alumnos):super(cedula,nombres,edad,sexo,asistencia,faltas);
}

class Aprendiz extends Persona(){
  double nota;
  
  Aprendiz(String cedula, String nombres, int edad, String sexo,
             int asistencia, int faltas,this.nota)
             :super(cedula,nombres,edad,sexo,asistencia,faltas);

  bool aprobado(Aprendiz estd){
    dynamic porcent = estd.asistencia/(estd.asistencia-estd.faltas);
    if(estd.nota>3 && porcent>0.7){
      return true;
    }else{
      return false;
    }
  }
}

class Ambiente(){
  int id;
  int max_capacidad;
  String  sede;
  int piso;
  bool disp;

    Ambiente(this.id, this.max_capacidad, this.sede, this.piso,this.disp){
      this.id = id;
      this.max_capacidad = max_capacidad;
      this.sede = sede;
      this.piso = piso;
      this.disp = disp;
    }

  void clase(List<Aprendiz> aprendiz, Instructor instructor){
    if(aprendiz.length > max_capacidad){
      print("No puede darse clases debido a que los alumnos superan la capacidad de el ambiente");
    }else if(!Instructor.disp){
      print("No se puede dar clases debido a que el instructor no esta disponible");
    }else if((instructor.alumnos/aprendiz.length)<0.6){
      print("No se puede dar clases debido a que no hay suficientes alumnos para dar clase");
    }
  }
}

void main(){
  dynamic inst = Random().nextInt(9)+1;
  bool disp;
  if (inst>2){
    disp = true;
  }else{
    disp = false;
  }
  Instructor edison = new Instructor("121545","Edison Sandoval",35,"M",30,4,"POO",disp,20);
  Ambiente a101 = new Ambiente(101,20,"Comercio",1,true);

  List <Aprendiz> aprendiz = [];
  dynamic presentes = Random().nextInt(15)+5;  
    for(int i = 0; i < presentes;i++){
      dynamic nota = Random().nextDouble(50);
      nota = nota / 10;
      dynamic asistencia = Random().nextInt(25) + 5;
      if(i % 2 == 0){
        aprendiz.add('${i+1}',"aprendiz${i+1}",19,"F",30,asistencia,nota);
      }else{
        aprendiz.add('${i+1}',"aprendiz${i+1}",19,"M",30,asistencia,nota);
      }
    } 
}
