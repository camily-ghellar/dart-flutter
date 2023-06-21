import 'dart:math';

void main() {
  List<int> lista = [];
  for (int i = 0; i < 50; i++) {
    lista.add(Random().nextInt(12) + 10);
  }
  print("Lista original: $lista");

  print("Itens unicos: ${lista.toSet()}");
}
