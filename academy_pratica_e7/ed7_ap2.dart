void main() {
  num largura = 10;
  num altura = 8.65;
  var retangulo = Retangulo(largura, altura);
  num areaRetangulo = retangulo.CalcularArea();

  print("Area do retangulo: $areaRetangulo");
}

class Retangulo {
  Retangulo(this.largura, this.altura);
  num largura;
  num altura;

  num CalcularArea() {
    num area = largura * altura;
    return area;
  }
}
