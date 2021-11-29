import 'dart:io';

main(List<String> args) {
  stdout.writeln('Cual es la base?');
  int a = int.parse(stdin.readLineSync() ?? '5');

  for (int i = 1; i <= 10; i++) {
    stdout.writeln('$a x $i = ${a * i}'); //tabla de multiplicar
  }
}
