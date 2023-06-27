void main() {
  List<String> listaInicial = [
    "10",
    "2XXL7",
    "JOJ0",
    "99",
    "381",
    "AS44",
    "47",
    "2B",
    "123",
    "78"
  ];
  List<int> listaConvertida = converterLista(listaInicial);

  print("Lista convertida: $listaConvertida");
}

List<int> converterLista(List<String> listaInicial) {
  List<int> listaConvertida = [];

  for (int i = 0; i < listaInicial.length; i++) {
    int valorConvert = 0;

    try {
      valorConvert = int.parse(listaInicial[i]);
    } catch (e) {
      //se der erro ele atribui o 0 do valorConvert
    }

    listaConvertida.add(valorConvert);
  }

  return listaConvertida;
}
