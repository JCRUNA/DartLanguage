///los constructores constantes al igual que las variables const se inicializan
///apenas se compula el programa

class Location {
  final double lat;
  final double long;

  const Location(this.lat, this.long);
}

main(List<String> args) {
  final sanFrancisco1 = new Location(33, 45.0000);
  final sanFrancisco2 = new Location(33, 45.0001);
  final sanFrancisco3 = new Location(33, 45.0001);

  // print(sanFrancisco1==sanFrancisco2); FALSE no coincide la longitud
  // print(sanFrancisco1==sanFrancisco3); FALSE ya que por mas que sean iguales
  //son instancias diferentes que se inicializan en diferente tiempo
  //que pasaria si definimos el constructor Location como const
  //y luego creamos nuevas instancias.

  const sanFrancisco4 = const Location(33, 45.0000);
  const sanFrancisco5 = const Location(33, 45.0001);
  const sanFrancisco6 = const Location(33, 45.0001);

//print(sanFrancisco4==sanFrancisco5); FALSE no coincide la longitud
  print(sanFrancisco5 ==
      sanFrancisco6); // TRUE ya que son iguales y el constructor es const
  ///Cuando creamos clases con constructores constantes todas las instancias que tangan los mismos
  ///valores de sus argumentos apuntaran al mismo contenedor de memoria.
}
