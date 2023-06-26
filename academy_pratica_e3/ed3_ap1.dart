import 'dart:math';

void main() {
  List<int> lista1 = [];
  List<int> lista2 = [];
  for (int i = 0; i < 5; i++) {
    lista1.add(Random().nextInt(100));
  }
  for (int i = 0; i < 5; i++) {
    lista2.add(Random().nextInt(100));
  }
  imprimirLista(lista1);
  somarLista(lista1, lista2);
}

void imprimirLista(List<int> lista1) {
  print("Lista: $lista1");
}

void somarLista(List<int> lista1, List<int> lista2) {
  List<int>? lista3 = [];
  print("Lista: $lista2");
  for (int i = 0; i < 5; i++) {
    lista3.add(lista1[i] + lista2[i]);
    print("${lista1[i]} + ${lista2[i]}");
  }
  if (lista1.length != lista2.length) {
    return lista3 = null;
    ;
  }
  if (lista3 == null) {
    print("Lista vazia");
  } else {
    print("Lista: $lista3");
  }
}
