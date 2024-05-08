//Se necesita un programa que sirva para determinar si debe o no pagarse horas extras a un 
//empleado. Además, debe determinar la cantidad de MINUTOS extras que deben pagársele


class Empleado {
  String nombre;
  double horasTrabajadas;

  Empleado(this.nombre, this.horasTrabajadas);
}


class EmpleadoHorasExtras extends Empleado {
  double horasNormales;

  EmpleadoHorasExtras(String nombre, double horasTrabajadas, this.horasNormales)
      : super(nombre, horasTrabajadas);

  bool debePagarHorasExtras() {
    return horasTrabajadas > horasNormales;
  }

  double calcularHorasExtras() {
    if (debePagarHorasExtras()) {
      return horasTrabajadas - horasNormales;
    } else {
      return 0;
    }
  }

  double calcularMinutosExtras() {
    return calcularHorasExtras() * 60;
  }
}

void main() {

  EmpleadoHorasExtras empleado = EmpleadoHorasExtras('Juan', 45.5, 40.0);
  if (empleado.debePagarHorasExtras()) {
    print('${empleado.nombre} debe recibir horas extras.');
    print('Cantidad de horas extras: ${empleado.calcularHorasExtras().toStringAsFixed(2)} horas');
    print('Cantidad de minutos extras: ${empleado.calcularMinutosExtras().toStringAsFixed(2)} minutos');
  } else {
    print('${empleado.nombre} no debe recibir horas extras.');
  }
}
