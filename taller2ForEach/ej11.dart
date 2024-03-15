void main() {
  String directorioClientes =
      "nif;nombre;email;telefono;descuento\n01234567L;Luis Perez;luisperez@mail.com;656343576;12.5\n71476342J;Maria Lopez;marialopez@mail.com;692839321;8\n63823376M;Juan Jimenez;juanjimenez@mail.com;664888233;5.2\n98376547F;Carmen Garcia;carmengarcia@mail.com;667677855;15.7\n12345678X;Pedro Martinez;pedromartinez@mail.com;611223344;10.0\n87654321A;Ana Fernandez;anafernandez@mail.com;633445566;7.8\n13579246B;Sara Rodriguez;sararodriguez@mail.com;655887799;14.3\n24680135C;Javier Sanchez;javiersanchez@mail.com;677889900;9.6\n36925814D;Laura Gomez;lauragomez@mail.com;688990011;6.4\n48569372E;Alberto Perez;albertoperez@mail.com;699001122;11.1";

  Map<String, Map<String, dynamic>> clientes = {};

  List<String> lineas = directorioClientes.split('\n');

  List<String> campos = lineas[0].split(';');

  for (int i = 1; i < lineas.length; i++) {
    List<String> valores = lineas[i].split(';');
    Map<String, dynamic> cliente = {};
    for (int j = 0; j < campos.length; j++) {
      cliente[campos[j]] = valores[j];
    }
    clientes[valores[0]] = cliente;
  }

  print(clientes);
}
