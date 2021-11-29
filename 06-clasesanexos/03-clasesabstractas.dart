///

abstract class Vehiculo {
  bool encendido = false;

  void encender() {
    encendido = true;
    print('Vehiculo prendido');
  }

  void apagar() {
    encendido = false;
    print('Vehiculo apagado');
  }

  bool revisarMotor();
}

///que pasaria si a futuro necesito crear una nueva clase que tuviera esas mismas propiedad
///y metodos. Si son muchas propiedas deberia escribir mucho codigo.
///Para solucionarlo creamos la clase y la extendemos de la clase Vehiculo
class Carro extends Vehiculo {
  //cuando creo el metodo revisarMotor la clase carro me trae error.
//para solucionarlo debo implementar este metodo
  int kilometraje = 0;

  @override //sobrescribo el metodo del padre
  bool revisarMotor() {
    print('Motor ok');
    return true;
  }
}

main(List<String> args) {
  final ford = new Carro();

  ///si no es abstracta
  ///puedo hacer esto final for=new Vehiculo()
  ///si en cambio a vehiculo le pongo abstract no me deja instanciarla.
  ///Las clases abstractas sirven solo para utilizar los metodos y propiedades de la misma
  ///pero no para instanciarlas.
  ford.encender(); //me trae propiedades del padre
  ford.apagar();
  ford.revisarMotor();
}
