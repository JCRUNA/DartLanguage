class Herramientas {
  static const List<String> listado = [
    'Martillo',
    'Llave Inglesa',
    'Destornillador'
  ];

  ///es un metodo que llamo sin necesidad de instanciar la clase
  ///por ej el metodo de abajo que se encarga de imprimir el  listado
  ///de herramientas

  static imprimirListado() {
    return listado.forEach((element) => print(element));
  }
}

main(List<String> args) {
  // final herr = new Herramientas();

  // herr.listado.forEach((element) => print(element));
  // print(herr.listado);

  ///como vemos para acceder a la lista creada en la clase herramientas debemos primero crear una instancia
  ///de la clase. Pero como podemos hacer para acceder al listado sin instanciar la clase?
  ///Si agrego en la clase cuando definio la lista static vemos que podemos acceder sin instanciar la clase
  ///Pero las propiedades estaticas forman parte de la clase, no de las instancias por eso esto me da error
  ///herr.listado.forEach((element) => print(element));
  ///  print(herr.listado);

  // Herramientas.listado.add('Clavos'); // como vemos nos deja agregar elementos a la lista
  //pero esto no es lo que queremos ya que si es estatico no deberia poder agregar elementos.
  //Para solucionar eso agregamos const antes de static y de esta forma al ser const no me deja
  //agregar valores y Herramientas.listado.add('Clavos') me da error.

  // Herramientas.listado.forEach((element) => print(
  //     element)); //esto funciona ya que hacemos referencia a la propiedad de la clase Herramientas
  //y no a una instancia de la misma.

  Herramientas
      .imprimirListado(); //llamo directo al metodo sin inicializar la clase
}
