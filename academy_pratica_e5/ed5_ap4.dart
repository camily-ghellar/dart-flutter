void main() {
  final listaNomes = [
    "Joao",
    "Maria",
    "Pedro",
    "Maria",
    "Ana",
    "Joao",
    "Maria",
    "Fernanda",
    "Carlos",
    "Maria"
  ];

  final nome = 'Ana';
  final quantidade = contarNome(listaNomes, nome);

  if (quantidade == 1) {
    print('O nome $nome foi encontrado 1 vez');
  } else if (quantidade > 0) {
    print('O nome $nome foi encontrado $quantidade vezes');
  } else {
    print('O nome nao foi encontrado');
  }
}

int contarNome(listaNomes, nome) {
  int qntd = 0;
  int tamanhoLista = listaNomes.length;
  for (int i = 0; i < tamanhoLista; i++) {
    if (listaNomes[i] == nome) {
      qntd = qntd + 1;
    }
  }

  return qntd;
}
