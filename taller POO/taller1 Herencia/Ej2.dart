/*Escriba un programa en Java que permita la gestión de una empresa agroalimentaria que 
trabaja con tres tipos de productos: productos frescos, productos refrigerados y productos 
congelados.  Todos  los  productos  llevan  esta  información  común:  fecha  de  caducidad  y 
número  de  lote.  A  su  vez,  cada  tipo  de  producto  lleva  alguna  información  específica.  Los 
productos  frescos  deben  llevar  la  fecha  de  envasado  y  el  país  de  origen.  Los  productos 
refrigerados  deben  llevar el  código  del organismo  de  supervisión  alimentaria,  la  fecha  de 
envasado, la temperatura de mantenimiento recomendada y el país de origen. Los 
productos congelados deben llevar la fecha de envasado, el país de origen y la temperatura 
de mantenimiento recomendada. 
Hay  tres  tipos  de  productos  congelados:  congelados  por  aire,  congelados  por  agua  y 
congelados por nitrógeno. Los productos congelados por aire deben llevar la información 
de  la  composición  del  aire  con  que  fue  congelado  (%  de  nitrógeno,  %  de  oxígeno,  %  de 
dióxido de carbono y % de vapor de agua). Los productos congelados por agua deben llevar 
la información de la salinidad del agua con que se realizó la congelación en gramos de sal 
por litro de agua. Los productos congelados por nitrógeno deben llevar la información del 
método  de  congelación  empleado  y  del  tiempo  de  exposición  al  nitrógeno  expresada  en 
segundos.*/

class Producto {
  DateTime fechaCaducidad;
  String numeroLote;

  Producto(this.fechaCaducidad, this.numeroLote);
}


class ProductoFresco extends Producto {
  DateTime fechaEnvasado;
  String paisOrigen;

  ProductoFresco(DateTime fechaCaducidad, String numeroLote, this.fechaEnvasado, this.paisOrigen)
      : super(fechaCaducidad, numeroLote);
}


class ProductoRefrigerado extends Producto {
  String codigoOrganismoSupervision;
  DateTime fechaEnvasado;
  double temperaturaRecomendada;
  String paisOrigen;

  ProductoRefrigerado(DateTime fechaCaducidad, String numeroLote, this.codigoOrganismoSupervision,
      this.fechaEnvasado, this.temperaturaRecomendada, this.paisOrigen)
      : super(fechaCaducidad, numeroLote);
}


class ProductoCongelado extends Producto {
  DateTime fechaEnvasado;
  String paisOrigen;
  double temperaturaRecomendada;

  ProductoCongelado(DateTime fechaCaducidad, String numeroLote, this.fechaEnvasado, this.paisOrigen,
      this.temperaturaRecomendada)
      : super(fechaCaducidad, numeroLote);
}


class CongeladoPorAire extends ProductoCongelado {
  double porcentajeNitrogeno;
  double porcentajeOxigeno;
  double porcentajeDioxidoCarbono;
  double porcentajeVaporAgua;

  CongeladoPorAire(DateTime fechaCaducidad, String numeroLote, DateTime fechaEnvasado, String paisOrigen,
      double temperaturaRecomendada, this.porcentajeNitrogeno, this.porcentajeOxigeno,
      this.porcentajeDioxidoCarbono, this.porcentajeVaporAgua)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, temperaturaRecomendada);
}

class CongeladoPorAgua extends ProductoCongelado {
  double salinidadAgua;

  CongeladoPorAgua(DateTime fechaCaducidad, String numeroLote, DateTime fechaEnvasado, String paisOrigen,
      double temperaturaRecomendada, this.salinidadAgua)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, temperaturaRecomendada);
}

class CongeladoPorNitrogeno extends ProductoCongelado {
  String metodoCongelacion;
  int tiempoExposicionNitrogeno;

  CongeladoPorNitrogeno(DateTime fechaCaducidad, String numeroLote, DateTime fechaEnvasado, String paisOrigen,
      double temperaturaRecomendada, this.metodoCongelacion, this.tiempoExposicionNitrogeno)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen, temperaturaRecomendada);
}

void main() {
  
  var productoFresco = ProductoFresco(DateTime(2024, 5, 7), "123ABC", DateTime(2024, 5, 1), "España");
  var productoRefrigerado = ProductoRefrigerado(DateTime(2024, 5, 7), "456DEF", "12345", DateTime(2024, 4, 25), 4.0, "Francia");
  var productoCongeladoPorAire = CongeladoPorAire(
      DateTime(2024, 5, 7), "789GHI", DateTime(2024, 4, 20), "Italia", -18.0, 70.0, 20.0, 5.0, 5.0);
  var productoCongeladoPorAgua = CongeladoPorAgua(
      DateTime(2024, 5, 7), "101112JKL", DateTime(2024, 4, 15), "Alemania", -20.0, 10.0);
  var productoCongeladoPorNitrogeno = CongeladoPorNitrogeno(
      DateTime(2024, 5, 7), "131415MNO", DateTime(2024, 4, 10), "Portugal", -25.0, "Inmersion", 120);
  
  
  print("Producto Fresco: Fecha envasado ${productoFresco.fechaEnvasado}, País de origen ${productoFresco.paisOrigen}");
  print("Producto Refrigerado: Codigo organismo supervision ${productoRefrigerado.codigoOrganismoSupervision}, Temperatura recomendada ${productoRefrigerado.temperaturaRecomendada}");
  print("Producto Congelado por Aire: Porcentaje nitrogeno ${productoCongeladoPorAire.porcentajeNitrogeno}, Porcentaje oxigeno ${productoCongeladoPorAire.porcentajeOxigeno}");
  print("Producto Congelado por Agua: Salinidad agua ${productoCongeladoPorAgua.salinidadAgua}");
  print("Producto Congelado por Nitrogeno: Método congelacion ${productoCongeladoPorNitrogeno.metodoCongelacion}, Tiempo exposición nitrogeno ${productoCongeladoPorNitrogeno.tiempoExposicionNitrogeno}");
}
