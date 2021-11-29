import 'dart:io';

main(List<String> args) {
  stdout.writeln('Cual es tu edad?');
//  int  edad= stdin.readLineSync()??'0'; //me da error porque std retorna string y no puedo asignarlo a int

  int edad =
      int.parse(stdin.readLineSync() ?? '0'); //con parse lo paso a entero

  print(edad);
  if (edad >= 21) {
    stdout.writeln('Ciudadano');
  } else {
    if (edad >= 18) {
      stdout.writeln('Mayor de edad');
    } else {
      print('Menor de edad');
    }
  }

  //otra forma

  if (edad >= 21) {
    stdout.writeln('Ciudadano');
  } else if (edad >= 18) {
    stdout.writeln('Mayor de edad');
  } else {
    print('Menor de edad');
  }
}
