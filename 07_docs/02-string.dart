main(List<String> args) {
  String nombre = 'Fernando';
  String apellido = 'Herrera';

  // String nombreCompleto = '$nombre $apellido';
  String nombreCompleto = '$nombre' ' ' '$apellido';
  print(nombreCompleto);

  ///propiedadades del objeto string
  ///
  print('longitud nombre:${nombre.length}');
  print('Code units:${nombre.codeUnits}');

  ///Metodos del objeto string

  print('Contiene F:${nombre.contains('F')}'); //contiene F el nombre
  print('Termina en o:${nombre.endsWith('o')}');
  print(
      'Pad Left:${nombre.padLeft(20, 'a')}'); //rellena con espacios en blanco o en este caso con 'a' a la izquiedad el string si length < width

  print('Operadores []:${nombre[0]}'); //trato al string como lista
  print('Operadores *:${nombre * 2}'); //duplica el valor de nombre
  print('ReplaceAll :${nombre.replaceAll('er', 'i')}');
  print(
      'ReplaceAll :${nombreCompleto.replaceAll(RegExp(r'e'), 'a')}'); //reempplazo e por a
  print(
      'SubString :${nombreCompleto.substring(5)}'); //devuelve un string recortado desde la posicion pasada como argumento.La pocision final es opcional
  print(
      'IndexOf :${nombreCompleto.indexOf('e')}'); //devuelve la posicion de donde se encuentra la primer coincidencia.
  print(
      'Split :${nombreCompleto.split(' ')[1]}'); //corta el nombrecompleto por el espacio y retorna el segundo elemento que es el apellido
  print(
      'capitalizo ultposicion :${nombreCompleto[nombreCompleto.length - 1].toUpperCase()}');
}
