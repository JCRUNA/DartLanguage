import 'dart:io';

main() {
  File file = new File(
      Directory.current.path + '\\04_tipos_no_comunes\\assets\\personas.txt');

  //la lectura de un archivo puede ser sincrono o asincrono

  Future<String> f = file.readAsString();

  String g = file
      .readAsStringSync(); //para lectura sincrona. Lo asigno a string no future
  print(g);

  f.then((value) => print(value));

  print('Fin del main');
  // print(Directory.current.path); //directorio actuak
}
