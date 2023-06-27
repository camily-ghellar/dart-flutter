void main() {
  List<String>? listaInicial = [
    'Camily',
    'Leonardo',
    'Ana',
    'João',
    'Maria',
    'José'
  ];
  String? elementoOpcional;

  List listaModificada =
      removerDaLista(lista: listaInicial, elementoOpcional: 'Ana');

  for (String i in listaModificada) {
    print('Valor: $i');
  }
}

List removerDaLista(
    {List<String>? lista, String? elementoOpcional /*Parâmetro opcional*/}) {
  lista?.remove(elementoOpcional);

  return lista ?? [];
}
