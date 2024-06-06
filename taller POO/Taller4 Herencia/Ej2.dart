class Empleado {
  String cedula;
  double sueldoBase;
  double pagoPorHoraExtra;
  int horasExtraRealizadas;
  bool casado;
  int numeroHijos;

  Empleado(this.cedula, this.sueldoBase, this.pagoPorHoraExtra, this.horasExtraRealizadas, this.casado, this.numeroHijos);

  double calcularHorasExtra() {
    return horasExtraRealizadas * pagoPorHoraExtra;
  }

  double calcularSueldoBruto() {
    return sueldoBase + calcularHorasExtra();
  }

  double calcularRetenciones(double porcentajeBase) {
    double porcentajeRetencion = porcentajeBase;
    if (casado) {
      porcentajeRetencion -= 2;
    }
    porcentajeRetencion -= numeroHijos;
    return calcularSueldoBruto() * (porcentajeRetencion / 100);
  }

  double calcularSueldoNeto(double porcentajeBase) {
    return calcularSueldoBruto() - calcularRetenciones(porcentajeBase);
  }

  String informacionBasica() {
    return 'Cedula: $cedula, Casado: ${casado ? "Si" : "No"}, Numero de hijos: $numeroHijos';
  }

  String todaLaInformacion(double porcentajeBase) {
    return '''
    Cedula: $cedula
    Casado: ${casado ? "Si" : "No"}
    Numero de hijos: $numeroHijos
    Sueldo base: \$${sueldoBase.toStringAsFixed(2)}
    Complemento por horas extra: \$${calcularHorasExtra().toStringAsFixed(2)}
    Sueldo bruto: \$${calcularSueldoBruto().toStringAsFixed(2)}
    Retencion: \$${calcularRetenciones(porcentajeBase).toStringAsFixed(2)}
    Sueldo neto: \$${calcularSueldoNeto(porcentajeBase).toStringAsFixed(2)}
    ''';
  }
}

void main() {
  Empleado empleado = Empleado('12345678', 1500000, 50000, 10, true, 2);
  double porcentajeRetencionBase = 15;

  print('Informacion basica del empleado:');
  print(empleado.informacionBasica());

  print('\nToda la informacion del empleado:');
  print(empleado.todaLaInformacion(porcentajeRetencionBase));
}
