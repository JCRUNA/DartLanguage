main(List<String> args) {
  List<int> lista = [1, 2, 3, 4, 5];
  List<int>? lista2; // tinene valor de null
  List<int> lista3 = [10, -20, -30, 40, 50, 40];

  List<String> nombre = ['Tony', 'Peter'];

  print('Length: ${lista.length}'); //longitud lista
  print('Primer elemento: ${lista.first}'); //primer elemento == a lista[0]
  print('is empty: ${lista.isEmpty}'); //la lista no esta vacia
  // print('is empty: ${lista2.isEmpty}'); //no nos deja avannzar por el nullSafety

  print(
      'asMap: ${lista.asMap()}'); //convierte la lista a un mapa   {0: 1, 1: 2, 2: 3, 3: 4, 4: 5}
  print(
      'asMap: ${lista.asMap()[2]}'); //busco el valor de la clave 2 del mapa  en este caso es 3

  Map listaMapa = lista.asMap(); //guarda en variable el mapa
  print('lista mapa: ${listaMapa[4]}'); //retorno el ultimo valor del mapa

  Map nombreMapa = nombre.asMap();
  print('nombreMapa: ${nombreMapa[1]}'); //retorna pedro

  print('Indice de peter: ${nombre.indexOf('Peter')}'); //retorna 1

  int mayor3 = lista.indexWhere((element) =>
      element >
      3); //retorna 3 que es el primer indice donde el valor es mayor que 3
  print('$mayor3   valor ${lista[mayor3]}');
  print(
      'ultimo indice que coincide: ${lista3.lastIndexOf(40)}'); //retorna posicion 5

  print(
      'remove: ${nombre.remove('Tony')}'); //devuelve true ya que lo encuentra y lo borra. Ademas modifica el listado original
  lista.shuffle(); //mezcla aleatoriamente la lista
  print('mezclar: ${lista}');

  lista3.sort();
  print(lista3);
  print(
      'lista reversa: ${lista3.reversed.toList()}'); //muestrro ordenado de mayor a menor y convierto alista ya que reversed devuelve un iterable

  final newList = nombre
      .map((e) => e.toUpperCase())
      .toList(); //convierte a mayusculas todos los elementos de la lista nombre y lo asigna a nueva lista

  print(newList);
}
