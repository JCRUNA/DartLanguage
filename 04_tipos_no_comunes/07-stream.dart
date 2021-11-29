import 'dart:async';

///es un flujo de informacion. Son asincronos. Pero a diferencia del futuro
///debemos definir que va a hacer el stream cuando reciba la data antes de mandar la informacion

main(List<String> args) {
  ///asi como esta definido el streamController puede recibir cualquier tipo de
  ///datos ya que es dynamic. Pero muchas veces queremos que reciba cierto tipo de datos
  ///para ello seria asi:  final streamController =new  StreamController<String>()
  final streamController =
      StreamController(); //pongo var para que dart infiera el tipo y puede manejar cualquier tipo de dato

  ///listen necesita una funcion a ejecutar. En este caso
  ///cuando recibimos la data la imprime en pantalla
  // streamController.stream.listen((data) {
  //   print('Despegando! $data');
  // });
  ///Escribo la misma funcion de arriba pero en formato flecha asi es mas
  ///legible ya que le voy a pasar mas argumentos al listen
  ///con onError puedo manejar la excepcion a diferencia de adderro que solo muestra el error.
  ///Con cancerlOnerror en True me aseguro que el stream no continue cuando sucede un error.
  ///el ondone se dispara cuando se ejecuta  streamController.sink.close();
  ///
  streamController.stream.listen((data) => print('Despegando! $data'),
      onError: (e) => print(e),
      cancelOnError: false,
      onDone: () => print('Mision completa'));

  streamController.sink.add(
      'Apollo 11'); //sink es para agregar un nuevo elemento y le paso como data apolo11
  ///el stream al ser asincrono se va a ejecutar despues del fin del main.
  streamController.sink.add('Apollo 12');
  streamController.sink.add('Apollo 13');

  ///con addError lanza una excepcion no controlada
  streamController.sink.addError('Houston tenemos un problema');
  streamController.sink.add('Apollo 14');
  streamController.sink.add('Apollo 15');

  ///como cancelar el stream cuando se que no voy a recibir mas informacion. Por ejemplo
  ///en una aplicacion cuando el usuario cierra sesion.
  streamController.sink.close();

  print('Fin del main');
}
