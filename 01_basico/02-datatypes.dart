main() {
  //dart tiene siempre la funcion main

//numeros
  // var a = 10; //debemos evitar el var ya que infiere tipo de datos
  // int b = 10;

  // int? c; //c puede ser nulo
  // double h = 3.0;
  // print(c);

//--------------strings--------

  // var nombre = 'Tony'; //debemos evitar el uso de var
  // String nombre = 'Tony';

  // String? nombre2;

  // print(nombre2);

  // String multilinea = '''
  // Hola $nombre buenos dias,
  // como estas?
  // ''';

  // print(multilinea);

//-----------------Boolean-------------

  // var isActive;

  // print(isActive); //no genera error por isAcitve es dynamic y acepta cualquier valor incluso null

  // // bool? isActive;
  // // print(isActive);

  // bool encendido = true;
  // bool apagado = !encendido;

  //en este caso ! es el operador de negacion.
  //Si se usa al final ejemplo print(isActive!) esto le dice a Dart
  //que la variable nunca va a ser nula.

//-----------------------Listas--------------------------
  //var villanos = ['lutor', 'red skull', 'Doom',1,true];

  // List<String> heroe = new List();//este metodo es obsoleto

  // List<String> villano = [
  //   'lutor',
  //   'red skull',
  //   'Doom'
  // ]; //mejor forma de definir lista
  // villano[0] = 'Superman';
  // villano.add('Guason');
  // villano.add('Guason');
  // villano.add('Guason');
  //pasar lista a set asi elimino duplicados
  // var villanosSet = villano.toSet();
  // villanosSet.toList();

  // print(villano);

//-----------------------sets------------------------------
//El set deja solo los elementos unicos.

  // Set<String> villanos2 = {'lutor', 'red skull', 'Doom'};
  // villanos2.add('Guason');
  // villanos2.add('Guason');
  // villanos2.add('Guason');
  // print(villanos2);

//-----------------------MAPAS------------------------------
// son pares de clave-valor
  Map<String, String> ironman = {
    'nombre': 'Tony Stark',
    'poder': 'Inteligencia',
  };
  print(ironman['poder']);

  Map<String, dynamic> capitan = new Map();

  capitan.addAll({
    'nombre': 'Steel',
    'poder': 'Soportar drogas sin morir',
    'nivel': 9000,
  });

  print(capitan);
}
