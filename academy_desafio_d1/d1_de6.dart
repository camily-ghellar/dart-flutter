void main() {
  List<int> decimal = [3, 17, 23, 49, 328, 1358, 21, 429, 12, 103, 20021];
  decimal.sort();

  for (int i = 0; i < 11; i++) {
    List<int> b = converterBinario(decimal[i]);
    List<String> h = converterHexadecimal(decimal[i]);
    List<int> o = converterOctal(decimal[i]);
    print("decimal: ${decimal[i]}, binario: $b, octal: $o, hexadecimal: $h");
  }
}

List<int> converterBinario(int d) {
  List<int> listaBinario = [];

  while (d > 0) {
    listaBinario.insert(0, d % 2);
    d = d ~/ 2;
  }
  return listaBinario;
}

List<int> converterOctal(int d) {
  List<int> listaOctal = [];

  while (d > 0) {
    listaOctal.insert(0, d % 8);
    d = d ~/ 8;
  }
  return listaOctal;
}

List<String> converterHexadecimal(int d) {
  List<String> listaHexadec = [];
  while (d > 0) {
    int h = d % 16;
    if (h == 10) {
      listaHexadec.insert(0, "A");
    } else if (h == 11) {
      listaHexadec.insert(0, "B");
    } else if (h == 12) {
      listaHexadec.insert(0, "C");
    } else if (h == 13) {
      listaHexadec.insert(0, "D");
    } else if (h == 14) {
      listaHexadec.insert(0, "E");
    } else if (h == 15) {
      listaHexadec.insert(0, "F");
    } else {
      listaHexadec.insert(0, h.toString());
    }
    d = d ~/ 16;
  }
  return listaHexadec;
}
