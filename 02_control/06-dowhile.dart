import 'dart:io';

main() {
  String continuar = 'y';
  int contador = 0;

//La difenrecia fundamental con el while es que do while siempre va a ejecutar las acciones al menos una vez y luego evalua la condicion.
  //while primero evalua y luego ejecuta
  //do while primero ejecuta y despues evalua
  do {
    contador++;
    stdout.writeln('Contador: $contador');
    stdout.writeln('Desea continuar [y/n]');
    continuar = stdin.readLineSync() ?? 'n';
  } while (continuar == 'y');
}
