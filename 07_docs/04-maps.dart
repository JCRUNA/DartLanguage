main(List<String> args) {
  final persona = {'nombre': 'Joaquin', 'apellido': 'Cruna', 'edad': 33};
  final direccion = {'ciudad': 'Rosario', 'pais': 'Argentina'};

  print('persona: $persona');
  print(
      'lenght: ${persona.length}'); //retorna el nro de pares de valores en el mapa
  print(
      'keys: ${persona.keys}'); //retorna las llaves como un iterable es decir entre ()
  print('values: ${persona.values}');

  persona.addAll(direccion); //agrego el mapa direccion a personas
  print('addAll: $persona');
  persona.remove('pais'); //borra la clave pais y el valor asociado.
  print('addAll: $persona');
  persona.removeWhere((key, value) => key == 'nombre'
      ? false
      : true); //borra todas las claves que no son nombre
  print('removeWhere: $persona');

  persona.forEach((key, value) {
    //el metodo for each no retorna nada por lo que no puedo asignarlo a un nuevo mapa
    print('key: $key');
    print('value: $value');
  });
  //para solucionar eso usamos el metodo map y MapEntry que aplica a cada key y value las operaciones que queremos
  final personaMap = persona.map((key, value) {
    return MapEntry(key, value.toString().toUpperCase());
  });

  print(personaMap);
}
