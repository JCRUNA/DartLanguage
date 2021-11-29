main(List<String> args) {
  // var a = 10;
  // final double b = 10;
  // const double c = 10;

  //las 3 variables son enteras
  // a = b;
  // b = 20; me da error porque es final. Final es mas rapido en memoria
  // c = 20; me da error porque es const .Crea el espacion en memoria
  //en tiempo de compilacion. Apenas ejecutamos se inicializa el valor y no cambia mas.
  //Ademas es mas rapida ya que no tiene metodos asociados.

//   final personasFinal = ['juan', 'pedro', 'fernando'];
//   const personasCont = ['juan', 'pedro', 'fernando'];
//  //con final puedo agregar elementos a la lista
//   personasFinal.add('Martin');

//  //con constant cuando ejecuta me tira error ya que no puedo modificar la lista
//   personasCont.add('Marcelo');

  //Otra forma de definir las lista final y constant
  // final List<String> personasFinal = ['juan', 'pedro', 'fernando'];
  // List<String> personasCont = const ['juan', 'pedro', 'fernando'];

  // print(personasFinal);
  // print(personasCont);

  // personasFinal = []; //esto no esta permitido ya que estaria apuntnato a otro espacio de memoria

//Desde la version 2.12 esta disponible el late

  final double x =
      10.25; //final me dice q una vez que la inicializo no cambia mas!!!
  print(x);

  // final double  y;
  // print(y); esto me da error porque nunca la incialize

//el late avisa que despues la voy a inicializar la variable. Cuando use la
//variable ya va a estar inicializada
  late final double z;
}
