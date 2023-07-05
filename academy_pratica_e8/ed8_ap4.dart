import 'dart:math';

void main() {
  int numero = Random().nextInt(100);
  int dobro = Calculadora.dobro(numero);
  print("O dobro do número $numero e: $dobro");
}

abstract class Calculadora {
  static int dobro(int numero) {
    return 2 * numero;
  }
}
