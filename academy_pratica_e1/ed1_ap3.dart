import 'dart:math';

void main() {
  int n1 = Random().nextInt(100);
  int n2 = Random().nextInt(100);
  print("Variável 1: $n1. variável 2: $n2.");

  int troca = n1;
  n1 = n2;
  n2 = troca;

  print("Variável 1: $n1. variável 2: $n2.");
}
