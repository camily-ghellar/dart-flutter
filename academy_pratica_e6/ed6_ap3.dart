import 'dart:math';

void main() {
  int b = Random().nextInt(99);
  double base = b.toDouble();
  int a = Random().nextInt(99);
  double altura = a.toDouble();
  try {
    if (base > 0 && altura > 0) {
      var retangulo = Retangulo();
      var resultado = retangulo.calcularArea(base, altura);
      print("Area do retangulo: $resultado");
    } else {
      throw Exception();
    }
  } catch (e) {
    print(
        "Exception: Dimensoes invalidas, informe apenas valores positivos maiores que zero.");
  }
}

abstract class Forma {
  double calcularArea(double base, double altura);
}

class Retangulo extends Forma {
  @override
  double calcularArea(double base, double altura) {
    double areaRetangulo = base * altura;

    return areaRetangulo;
  }
}
