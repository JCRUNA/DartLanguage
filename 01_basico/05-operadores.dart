main(List<String> args) {
  /**
   * Un operador es un simbolo que le dice al compilador
   * que debe de realizar una tarea matematica, relacional
   * o logica  y debe producir un resultado
   */

  //operador de asignacion
  int a = 10;
  int? b;
  b ??= 20; //si b es nula entonces le asigno 20

  // Operadores condicionales

  int c = 23;

  String resp = c > 25 ? 'C MAYOR A 25' : 'C MENOR A 25'; //expresion ternaria

  print(resp);

  int x = 4;
  int y = 5;

  print(x > y);
  print(x == y);
  print(x < y ? 'x es manor q y' : 'error');

  //operador de tipo is
  int i = 10;
  String j = '10';

  print(i is int);
  print(j is String);
}
