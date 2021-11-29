class Rectangulo {
  int? base;
  int? altura;
  int? area;
  String? tipo; //tipo cuadrado si base==altura sino rectangulo

  ///el constructor factory debe regresar una nueva instancia de Rectangulo o una instancia
  ///previamente existente.
  ///Puede ser utilizado para realizar algun procedimiento o calculo y asi determinar cual es el constructor de mi clase
  ///que mejor se adapte a las necesidades que me estan pidiendo o regresar una instancia previamente generada de la misma clase.
  factory Rectangulo(int base, int altura) {
    if (base == altura) {
      return Rectangulo.cuadrado(base);
    } else {
      return Rectangulo.rectangulo(base, altura);
    }
  }

  ///Como vemos arriba el constructor factory no crea la instancia por si solo. Solo llama a uno u otro constructor de acuerdo a los parametros
  ///que recibe. El constructor al que llama es el encargado de crear  la instancia

  Rectangulo.cuadrado(int base) {
    this.base = base;
    this.altura = base;
    this.area = base * base;
    this.tipo = 'Cuadrado';
  }

  Rectangulo.rectangulo(int base, int altura) {
    this.base = base;
    this.altura = altura;
    this.area = base * altura;
    this.tipo = 'Rectangulo';
  }

  @override
  String toString() {
    // TODO: implement toString
    return {'base': base, 'altura': altura, 'area': area, 'tipo': tipo}
        .toString();
  }
}

main(List<String> args) {
  final figura = new Rectangulo(10, 110);

  print(figura);
}
