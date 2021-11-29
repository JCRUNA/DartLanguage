import 'dart:math';

main(List<String> args) {
  int rnd = Random().nextInt(10);
  print(rnd);

  switch (rnd) {
    case 0:
      print('Es lunes');
      break;
    case 1:
      print('Es Martes');
      break;
    case 2:
      print('Es Miercoles');
      break;
    case 3:
      print('Es Jueves');
      break;
    case 4:
      print('Es Viernes');
      break;
    case 5:
      print('Es Sabado');
      break;
    case 6:
      print('Es Domingo');
      break;
    default:
      print('No es dia de semana');
  }
}
