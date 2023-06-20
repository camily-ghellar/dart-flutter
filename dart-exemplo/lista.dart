void main() {
  List<int> lista = [1, 2, 3];
  print(lista);
  print(lista[0]);
  print(lista.length);

  List<int> lista2 = [4, 5, 6];
  var listaTotal = [0, ...lista, ...lista2];
  //listaTotal.addAll(lista);
  print(listaTotal);

  bool valorAtivo = true;
  var lista3 = null;
  var novaLista = [...lista, if (valorAtivo) 4, 5, ...?lista3];
  print(novaLista);
}
