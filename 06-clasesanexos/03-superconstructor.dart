class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre , Edad: $edad');
}

class Cliente extends Persona {
  //The superclass 'Persona' doesn't have a zero argument constructor. Si extiendo de Persona tengo que tener el constructo de la misma
  String? direccion;
  List ordenes = [];

  ///uso : para ejecutar el proceso antes de que se crea la instancia y con super llamamos a los argumentos de la clase
  ///padre Persona. En el momento que creo el cliente creo tambien una instancia de persona
  Cliente(int edadActual, String nombreActual)
      : super(nombreActual, edadActual);
}

main(List<String> args) {
  final yo = new Persona('Joaquin', 27);

  final pedro = new Cliente(37, 'Pedro');

  yo.imprimirNombre();

  pedro.imprimirNombre();
}
