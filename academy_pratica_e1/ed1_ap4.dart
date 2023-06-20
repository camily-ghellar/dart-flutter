import 'dart:math';

void main() {
  int n1 = Random().nextInt(100);
  int n2 = Random().nextInt(100);
  double resultado = n1 / n2;
  int parteInteira = resultado ~/ 1;
  double parteDecimal = resultado % 1;

  print("N1: $n1, N2: $n2, resultado da divisão: $resultado.");
  print(
      "Parte inteira do resultado: $parteInteira, parte decimal do resultado: $parteDecimal");
}
