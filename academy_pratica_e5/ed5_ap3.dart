import 'dart:math';

void main() {
  int n = Random().nextInt(900) + 100;

  var resultadoSoma = retornarSoma(n);

  print("A soma dos numeros pares entre 0 e $n é $resultadoSoma");
}

int retornarSoma(int n) {
  int soma = 0;
  for (int i = 0; i <= n; i++) {
    if (i % 2 == 0) {
      soma = soma + i;
    }
  }
  return soma;
}
