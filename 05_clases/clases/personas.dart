//defino clase
//todas las clases y objetos heredan de la clase object
///Propiedadades privadas: son propiedades que solo pueden ser
///usadas solo dentro de la clase. Para pasarlo a privada solo pongo primero
///el _
class Persona {
  //Campos y propiedades
  String? nombre;
  int? edad;
  String _bio = 'soy propiedad privada';

  //Get y set
  ///son metodos que sirven para simular una propiedad
  ///String get bio=>_bio.toUpperCase()
  ///El setter sirve para establecer el valor de una propiedad. Retorna un void
  ///no regresa ningun valor
  String get bio {
    return _bio.toUpperCase();
  }

  //set bio(String texto)=>this._bio=texto
  set bio(String texto) {
    this._bio = texto;
  }

  //Constructores
  ///Es un metodo que se llama en el momento que se crea una nueva instancia de la clase.
  ///Tiene que tener el mismo nombre que la clase
  ///hacemso el print(constructror para mostrar que se ejecuta apenas instanciamos la clase)
  ///El this.edad hace referencia a la propiedad edad de la clase mientras que edad hace referencia
  ///al argumento edad que pasamos cuando instanciamos la clase.
  /// [Persona(int edad,String nombre) {]
  /// [ this.edad = edad;]
  ///  [this.nombre = nombre;]
  // }
  ///Hay una forma mas resumida de definir el constructor y es la siguiente:
  ///Igual que en las funciones podemos pasar argumentos posicionales, opcionales con nombre y opcionales.
  /// [Persona(this.edad, {this.nombre});] //defino edad como argumento posicional obligatorio y nombre como opcional por nombre
  ///[Persona({this.edad, this.nombre})]; //defino edad y nombre como argumentos opcionales con nombre. Si no los paso me imprime null ya que edad y nombre les antepuse ?
  ///[Persona({this.edad==14, this.nombre=='Juan Carlos'})]Defino a edad y  nombre como argumentos opcionales con nombre y valores por defecto
  Persona(
      {required this.edad,
      required this.nombre}); //los defini como argumentos con nombre obligatorios

  ///Constructores con Nombre
  ///En el siguiente constructor solo paso el nombre y la edad siempre es 30
  ///Puedo crear la cantidad de constructores con nombre que necesite
  Persona.personacon30(this.nombre) {
    this.edad = 30;
  }
  Persona.personaPablo(this.edad, {this.nombre = 'Pablo'});
  //Metodos
  @override //sobrescribe el metodo toString de la case padre en este caso el object
  String toString() {
    return ('Nombre: $nombre - Edad: $edad - Bio: $_bio  ${this.nombre}'); //puedo usar tambien el this.nombrepropiedad
  }
}
