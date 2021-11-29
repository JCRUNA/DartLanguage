main(List<String> args) {
  //tarea asincrona que se resuelve en un futuro. Se ejecuta en paralelo.

  // Future timeout = Future.delayed(Duration(seconds: 3), () {
  //   print('3 segundos despues');
  // });

  // print('Fin del main');

  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    print('3 segundos despues');
    return 'Retorno del future';
  });

  timeout.then((text) => print(
      text)); //el then espera a que el future se resuelva. usa lo que retorna el future. En este caso imprime en pantalla
  //De todas maneras se imprime antes el print 'Fin del main' y luego el print del then
  timeout.then(print); //funciona igual que la de arribaa
  print('Fin del main');
}
