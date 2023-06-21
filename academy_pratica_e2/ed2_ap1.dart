import 'dart:math';

void main() {
  List<int> lista = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  for (int i = 0; i < 10; i++) {
    lista[i] = Random().nextInt(100);
    print("Posicao: $i, Valor: ${lista[i]}");
  }
}
