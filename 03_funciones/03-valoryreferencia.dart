main(List<String> args) {
  String nombre = 'Joaquin';
  String nombre2 = capitalizar('joaquin');

  // print(nombre);
  // print(nombre2);

  Map<String, String> persona = {'nombre': 'tony stark'};

  Map<String, String> persona2 = capitalizarMapa(persona);

  print(persona);
  print(persona2);

  ///los double,float,int,bool son pasados por valor
  ///los objetos, mapas, listas, instancias de clases son mandadas por referencia y es por eso que vemos que
  ///el print de persona y persona2 ambos estan en mayusculas.
  ///Para evitar esto puedo romper la referencia del argumento haciendo argumento={...argumento} De esta forma
  ///cuando imprima vere persona con su valor original y persona2 con mayusculas.
}

String capitalizar(String texto) {
  texto = texto.toUpperCase();
  return texto;
}

Map<String, String> capitalizarMapa(Map<String, String> person) {
  //romper la referencia.
  person = {...person};
  person['nombre'] = person['nombre']?.toUpperCase() ??
      'No hay datos'; //si el valor nombre del pasa es nulo entonces que asigne no hay datos
  return person;
}
