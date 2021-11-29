///

class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('Vehiculo prendido');
  }

  void apagar() {
    encendido = false;
    print('Vehiculo apagado');
  }
}

///que pasaria si a futuro necesito crear una nueva clase que tuviera esas mismas propiedad
///y metodos. Si son muchas propiedas deberia escribir mucho codigo.
///Para solucionarlo creamos la clase y la extendemos de la clase Vehiculo
class Carro extends Vehiculo {
  int kilometraje = 0;
}

main(List<String> args) {
  final ford = new Carro();
  ford.encender(); //me trae propiedades del padre
  ford.apagar();
  ford.encender();
}
