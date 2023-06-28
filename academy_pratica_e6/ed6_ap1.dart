void main() {
  String n1 = "a";
  String n2 = "10";
  var convertN1 = converterInteiro(n1);
  var convertN2 = converterInteiro(n2);
}

void converterInteiro(String n) {
  try {
    var num = int.parse(n);
    print("Numero digitado: $num");
  } catch (e) {
    print("Entrada invalida. Insira apenas numeros inteiros.");
  }
}
