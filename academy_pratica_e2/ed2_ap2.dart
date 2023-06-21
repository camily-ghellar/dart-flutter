import 'dart:math';

void main() {
  List<int> lista = [];
  for (int i = 0; i < 50; i++) {
    lista.add(Random().nextInt(15));
  }
  print("Lista original: $lista");

  lista.removeWhere((element) => element % 2 == 0);

  print("Lista atualizada: $lista");
}
