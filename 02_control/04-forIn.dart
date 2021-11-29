main(List<String> args) {
  List<String> listado = ['Batman', 'Superman', 'Mujer maravilla'];

  for (int i = 0; i < listado.length; i++) {
    print(listado[i]);
  }

  //vemos que con el for in es mucho mas rapido e intuitivo
  for (String item in listado) {
    print(item);
  }
}
