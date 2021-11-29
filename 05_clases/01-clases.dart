import 'clases/personas.dart';

main(List<String> args) {
  ///todas las clases van en archivos independientes.
  ///Es por eso que la clase persona la guardo en otro archivo y
  ///luego aca importo el archivo para usarla.
  ///Controla de manera estricta como se establecen y recuperan valores de las propiedades

  final Persona persona = new Persona(nombre: 'Jonyyy', edad: 27);

  final Persona persona2 = new Persona.personacon30('Juan');

  final Persona persona3 = new Persona.personaPablo(27);

  final Persona persona4 = new Persona.personaPablo(65);

  ///Generalmente las propiedades de la clase la definimos en el constructor
  // persona
  //   ..nombre = 'Joaquin'
  //   ..edad = 33;
  // ..bio = 'Nacio por ahi';

  /// me imprime solo instance of persona. Pero si sobreescribo el metodo toString
  /// entonces cuando imprimo persona me muestra las propiedades que defini en el metodo
  /// toStrign.Ver clase
  // print(persona.bio);
  // persona.bio = 'Aca cambie la info';
  // print(persona.bio);

  print(persona);
  print(persona2);
  print(persona3);
  print(persona4);
}
