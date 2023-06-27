void main() {
  List listaCompleta = [];
  int n = 34;
  for (int i = 0; i <= n; i++) {
    listaCompleta.add(i);
  }
  var imprimirImpares = numerosImpares(listaCompleta);
  imprimirImpares.forEach((elemento) {
    print("Impar: $elemento");
  });
}

List numerosImpares(List listaCompleta) {
  List listaImpares = [];
  int n = 34;
  for (int i = 0; i <= n; i++) {
    if (listaCompleta[i] % 2 != 0) {
      listaImpares.add(i);
    }
  }
  return listaImpares;
}
