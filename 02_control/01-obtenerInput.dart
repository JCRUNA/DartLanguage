import 'dart:io';

main() {
  //imprimir en terminal o cmd
  stdout.write('Hola mundo\n');

  //leer informacion de usuario. Espera que el usuario ingrese un valor
  String? nombre = stdin.readLineSync(); //el stdin siempre retorna string
  //otra forma de seria
  // String nombre = stdin.readLineSync() ?? 'No hay datos';

  print('Tu nombre es: $nombre ');
}
