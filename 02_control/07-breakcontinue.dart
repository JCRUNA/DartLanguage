main(List<String> args) {
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue; //cuando es 5 salta a la siguiente iteracion
    }
    print(i);

    if (i == 7) {
      break; //cuando i=7 entonces sale del ciclo for
    }
  }
}
