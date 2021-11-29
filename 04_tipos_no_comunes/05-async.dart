import 'dart:io';

main() async {
  String path =
      Directory.current.path + '\\04_tipos_no_comunes\\assets\\personas.txt';
  String rta = await leerArchivo(path);
  print(rta);
  leerArchivo(path).then((text) =>
      print(text)); //esta se ejecuta ultimo ya que no espera como el await

  print('Fin del main');

  //con el async y await espero a que se resuelva el future y despues continuo con el resto de operaciones
  ///el async trasnforma una funcion comun en una que siempre retorna un future.  El asyn puede usarse sin el await.
  ///Sin embargo el await no funciona sin un async
  ///En este caso primero ejecuta la funcion leerArchivo la cual lee el archivo personas txt, y lo almacena en la variable string rta y espera que el future
  ///se resuelva a travez del await y luego ejecuta el print Fin del main
}

Future leerArchivo(String path) async {
  File file = new File(path);
  return file.readAsString();
}
