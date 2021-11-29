///las propiedades final no tienen un setter.
///Una vez que definimos una propiedad como final no podemos cambiarla
///En este caso defino la clase cuadrado y la idea es obtener el area a partir del valor
///del lado. Pero no queremos que el usuario pase el area. Solo debe pasar el lado ya que el area
///se calcula lado*lado. Para eso creamos un constructor que reciba solo el lado y dentro del
///cuerpo del constructor calculamos el area.

class Cuadrado {
  final int? lado;
  final int? area;

  ///esto da error porque las propiedades final no tienen un setter
  // Cuadrado(int lado, int area) {
  //   this.lado = lado;
  //   this.area = area;
  // }

  /// Cuadrado(this.area, this.lado); //solucion permitida
  ///
  Cuadrado(int lado)
      : this.lado = lado,
        this.area = lado * lado;
}

main(List<String> args) {
  final Cuadrado cuadrado = new Cuadrado(12);
  //cuadrado.area=23 esto da error ya que definimos lado como final
  print(cuadrado.area);
}
