////Como vemos el metodo imprimirNombre aparece en la clase Padre Persona y
///no en la clase cliente. Que pasaria si agregamos ese metodo a la clase cliente?
///Cuando llamemos al metodo imprimirNombre se ejecutaria el de la clase personas o
///el de la clase clientes??? Bueno como pedro es una instancia de la clase Clientes
///entonces se ejecuta el metodo imprimirNombre definido en la clase cliente.
///Por lo tanto ocurre una sobreescritura del metodo padre.
///De todas formas es conveniente agregar el decorador @override para poder visualizar
///facilmente que estamos sobrescribiendo el metodo

class Persona {
  String nombre;
  int edad;

  Persona(this.nombre, this.edad);

  void imprimirNombre() => print('Nombre: $nombre , Edad: $edad');
}

class Cliente extends Persona {
  String? direccion;
  List ordenes = [];

  Cliente(int edadActual, String nombreActual)
      : super(nombreActual, edadActual);

  @override
  void imprimirNombre() {
    super
        .imprimirNombre(); //esto lo agrego cuando quiero tambien usar el metodo padre
    print('Cliente: $nombre ($edad)');
  }
}

main(List<String> args) {
  final yo = new Persona('Joaquin', 27);

  final pedro = new Cliente(37, 'Pedro');

  yo.imprimirNombre();

  pedro.imprimirNombre();
}
