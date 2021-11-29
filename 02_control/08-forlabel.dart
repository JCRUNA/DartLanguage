main(List<String> args) {
  //ciclos anidados
  cicloexterno: //son etiquetas que se ponen antes del bucle para luego ser usadas si queres salir de algun bucle especifico
  for (int i = 0; i < 5; i++) {
    print('i:$i');
    ciclointerno:
    for (int j = 0; j < 10; j++) {
      print('j: $j');

      if (j == 8) {
        break cicloexterno; //salgo del bucle mas externo.
        // break ciclointerno; salgo del bucle mas interno.
      }
    }
  }
}
