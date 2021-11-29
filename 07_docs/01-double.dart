main(List<String> args) {
  double numero = 3.1416;
  double infinito = double.infinity; //creo una instancia de double
  /// al ser una instancia de double podemos usar sus metodos y propiedades
  ///

  print(numero.isNegative);
  print('firma: ${numero.sign} :: $numero');
  print('runtype: ${numero.runtimeType}'); //retorna el tipo de datos
  print('Es fininito: ${numero.isFinite} :: $numero');
  print('Es finito: ${infinito.isFinite} :: $infinito');
  //metodos del double
  ///Los metodos son estaticos ya que no hace falta instanciar la clase para usarlos
  print('-------------Metodos-----------------');
  print('Abs: ${numero.abs()} :: $numero'); //valor abs
  print('Floor: ${numero.floor()} :: $numero'); //trunca
  print(
      'CeilToDouble: ${numero.ceilToDouble()} :: $numero'); //convierte a num en el double mas cercano
  print('toInt: ${numero.toInt()} :: $numero'); //convierte a entero
  print('clam: ${numero.clamp(3.1, 3.11)} :: $numero');
}
