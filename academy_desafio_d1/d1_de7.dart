void main() {
  List<int> numeros = [10, 35, 999, 126, 95, 7, 348, 462, 43, 109];

  int somaFor = 0;
  int somaWhile = 0;
  int somaRecursao = 0;
  int somaLista = numeros.reduce((i, j) => i + j);

  for (int i = 0; i < 10; i++) {
    somaRecursao = somaRecursao + Somar(numeros[i]);
  }

  for (int i = 0; i < 10; i++) {
    somaFor = somaFor + numeros[i];
  }
  print("for: $somaFor");

  int i = 0;
  while (i < 10) {
    somaWhile = somaWhile + numeros[i];
    i++;
  }
  print("while: $somaWhile");

  print("recursao: $somaRecursao");

  print("lista: $somaLista");
}

int Somar(int n) {
  int somaRecursao = 0;
  somaRecursao = somaRecursao + n;
  return somaRecursao;
}
