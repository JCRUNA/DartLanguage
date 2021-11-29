///le damos propiedades y metodos que tiene una clase a otra clase.
///los mixin no pueden ser instanciados y no pueden tener constructores!!!!!!
///los mixin se usan con la palabra with no con extends

mixin Loger {
  void imprimir(String texto) {
    final hoy = DateTime.now();
    print('$hoy ::::: $texto');
  }
}

mixin Loger2 {
  void imprimir2(String texto) {
    final hoy = DateTime.now();
    print('$hoy ::::: $texto');
  }
}

abstract class Astro with Loger {
  String? nombre;

  Astro() {
    imprimir('----init del Astro----');
  }

  void existo() {
    imprimir('--Soy un ser celestial y existo--');
  }
}

class Asteroide extends Astro with Loger, Loger2 {
  String? nombre;
  Asteroide(this.nombre) {
    imprimir('Soy $nombre');
    imprimir2('Soy $nombre');
  }
}

main(List<String> args) {
  final seres = new Asteroide('Ceres');
}
