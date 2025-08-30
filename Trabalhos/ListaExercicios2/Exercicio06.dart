abstract class FormaGeometrica {
  double calculoDaArea();
}

class Quadrado extends FormaGeometrica {
  double comprimento;
  double altura;

  Quadrado(this.comprimento, this.altura);

  @override
  double calculoDaArea() {
    return comprimento * altura;
  }
}

class Circulo extends FormaGeometrica {
  double raio;

  Circulo(this.raio);

  @override
  double calculoDaArea() {
    return 3.14 * raio * raio;
  }
}

class Losango extends FormaGeometrica {
  double diagonalMaior;
  double diagonalMenor;

  Losango(this.diagonalMaior, this.diagonalMenor);

  @override
  double calculoDaArea() {
    return (diagonalMaior * diagonalMenor) / 2;
  }
}

void main() {
  Quadrado q = Quadrado(5, 5);
  Circulo c = Circulo(3);
  Losango l = Losango(8, 6);

  print("Área do quadrado: ${q.calculoDaArea()}");
  print("Área do círculo: ${c.calculoDaArea()}");
  print("Área do losango: ${l.calculoDaArea()}");
}
