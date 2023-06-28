void main() {
  int n1 = 11;
  try {
    if (n1 % 2 == 0) {
      var n = numerosPares(n1);
      print("Entrada correta, voce inseriu um numero par.");
    } else {
      throw Exception();
    }
  } catch (e) {
    print("Exception: Entrada invalida. Insira apenas numeros pares.");
  }
}

void numerosPares(int n) {}
