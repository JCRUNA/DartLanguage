import 'dart:collection';

///No es muy utilizado ya que para barrido de elementos se usa
///con mayor frecuencia el ciclo for
main(List<String> args) {
  Queue<int> cola = new Queue();

  cola.addAll([10, 20, 30, 40, 50]);

  print(cola);

  Iterator i = cola
      .iterator; // asigno en i el indice que me permite controlar o barrer las posiciones
  //que se encuentren en mi queue

  while (i.moveNext()) {
    //recorro el iterator
    print(i.current); //imprimo el valor actual
  }
}
