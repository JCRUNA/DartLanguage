main(List<String> args) {
  saludar('Hola');
  saludar2(null);
  saludar3('Hola', 'Pedro',
      30); //A medida que hay mas cantidades de argumentos posicionales es mas propenso a errores ya que cuando llamamos la funcion debemos pasar los argumentos
  //en el orden correcto.
  saludarNombre(); //si no le paso argumentos entonces retorna todos los parametros null.
  saludarNombre2(
      mensaje: 'Hola',
      nombre:
          'Juaco'); //como defini nombre y mensaje como required me obliga a pasar estos argumentos

  saludarNombrepocision('Buenas tardes',
      nombre:
          'Raul'); //le paso primero el argumento posicional y despues el nombrado
}

void saludar(String mensaje) {
  //argumentos posicionales por defecto son obligatorios
  print('La funcion saludar retorna:$mensaje');
}

void saludar2(String? mensaje) {
  //si pongo ? para que puede recibir nulos entonces cuando llamo a la funcion debo pasarle un string o el valor null, si no le paso nada
//genera error
  print('La funcion saludar2 retorna:$mensaje');
}

void saludar3(String mensaje, [String nombre = 'Juan', int edad = 27]) {
  //argumentos posicionales por defecto son obligatorios. Si pongo al argumento entre [] entonces lo hago opcional. Puedo ponerle un valor por
  //defecto o puedo poner el ? para que pueda recibir null
  print('La funcion saludar3 retorna:$mensaje $nombre  $edad años');
}

void saludarNombre({String? mensaje, String? nombre, int edad = 21}) {
  //debo poner ? por el null safety sino da error

  print('Saludar por nombre: $mensaje - $nombre - $edad');
}

void saludarNombre2(
    {required String mensaje, required String nombre, int edad = 21}) {
  //debo poner ? por el null safety sino da error

  print('Saludar por nombre: $mensaje - $nombre - $edad');
}

void saludarNombrepocision(String mensaje,
    {required String nombre, int edad = 21}) {
//en este caso tenemos el primer argumento posicional y obligatorio y el resto de argumento es por nombre donde nombre es obligatorio y edad opcional
  print('Saludar por posicion y nombre: $mensaje - $nombre - $edad');
}
