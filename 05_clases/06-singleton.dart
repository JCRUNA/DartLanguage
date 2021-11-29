import 'clases/miservicio.dart';

///La idea de un patrón Singleton es que aunque yo haga aquí mi servicio 1 voy a poner aquí un v2.
///Por ejemplo  aunque instancie un nuevo servicio y aquí abajo instancia otro servicio esta instrucción
/// siempre regresa la misma instancia previamente generada en la clase.
/// Es decir esto me va a ayudar a que en memoria solo exista una instancia de mi servicio y no importa si en
///  50 lugares de mi aplicación hago referencia a mi servicio siempre va a regresar exactamente la misma.
///Esto es sumamente útil cuando ustedes quieren manejar su información centralizada en un único lugar
///porque todas las propiedades y métodos que tenga este servicio van a ser compartidas por todos los lugares
///donde se utilice y la configuración realmente no se hace en los archivos del mail por ejemplo o los
///archivos donde los utilizamos toda la configuración del Singleton se realiza en el servicio y en la
///configuración.
///Cuando es util?En todos los casos en los que no nos interese tener multiples instancias de una clase. Por ejemplo una instancia de una base de datos.
/// Tener una única instancia sería lo optimo, así evitamos tener varias y estar consumiendo más memoria cuando no es necesario.
/// Con el Singleton evitamos tener varias instancias de una misma clase, y si fuera costoso crear una instancia de esa clase en concreto,
///  evitamos gastar más recursos de los necesarios.
///

main(List<String> args) {
  final spotifyService = new MiServicio();
  spotifyService.url = 'https://api.spotify.com';

  final spotifyService2 = new MiServicio();
  spotifyService2.url = 'https://api.spotify.com/blabla';

  print(spotifyService ==
      spotifyService2); //true ya que apuntan al mismo lugar de memoria

  print(spotifyService.url ==
      spotifyService2
          .url); //true porque al usar singleton apunta a la ultima instancia creada y trae el valor de la url blabla

  print(spotifyService.url);
  print(spotifyService2.url);
}
