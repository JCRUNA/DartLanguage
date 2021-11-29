class MiServicio {
  ///creo una propieda static y final para que apunte siempre al mismo espacio de memoria.
  ///Esta propiedad privada _singleton me sirve para mantener la instancia en memoria de miservicio previamente
  ///creado./
  static final MiServicio _singleton = new MiServicio._internal();
  //con factory regresamos _singleton que es donde se almacena la instancia previamente
  //creada.
  factory MiServicio() {
    return _singleton;
  }

  String url = 'https://abc';
  String key = 'ABC123';

  MiServicio._internal();
}
