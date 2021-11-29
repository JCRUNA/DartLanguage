main(List<String> args) {
  Audio volumen = Audio.alto; //0 vol bajo; 1 vol medio; 2 vol alto

  switch (volumen) {
    case Audio.bajo:
      print('Vol bajo');
      break;
    case Audio.medio:
      print('Vol medio');
      break;
    case Audio.alto:
      print('Vol alto');
      break;
  }
}

///enum se define como una funcion fuera del main
enum Audio { bajo, medio, alto }
