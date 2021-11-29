main(List<String> args) {
  //funcion resumida
  int a = 10, b = 20;
  int resultado;
  resultado = sumarFlecha(2, 11);

  List<int> listado = [1, 2, 3, 4, 5, 4, 56, 2, 4, 2, 7];

  var nuevoListado = listado.where((int element) {
    return element > 2;
  });
  var nuevolistadoflecha = listado.where((int elemento) => elemento > 2);
  //los iterables son objetos en los cuales se puede recorrer con bucles for, while, etc
  print(nuevoListado);
  print(nuevolistadoflecha);
  print(nuevolistadoflecha
      .toSet()
      .toList()); //primero lo paso a set para eliminar duplicados y despues a lista

  print(resultado);
}

int sumar(int x, int y) {
  return x + y;
}

int sumarFlecha(int x, int y) => x + y;
