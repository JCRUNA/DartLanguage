main(List<String> args) {
  /// como manejamos los errores cuando el future no se resuelve.
  /// Por ejemplo en una solicitud http donde le paso el usuario y no se encuentra

  Future<String> timeout = Future.delayed(Duration(seconds: 3), () {
    //delayed espera 3 segundos
    if (1 == 1) {
      throw 'Auxilio! exploto esta cosa'; //con throw solo mostramos el error pero no podemos manejarlo
    }

    return 'Retorno del future';
  });

  timeout.then((text) => print(text)).catchError((error) => print(error));

  ///con catchtError capturamos el error y podemos manejar esta excepcion

  //el then espera a que el future se resuelva. usa lo que retorna el future. En este caso imprime en pantalla
  //De todas maneras se imprime antes el print 'Fin del main' y luego el print del then
  timeout.then(print); //funciona igual que la de arribaa
  print('Fin del main');
}
