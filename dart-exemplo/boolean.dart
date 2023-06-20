void main() {
  bool ativo = true;
  String nome = 'Camily';
  print(ativo /*.toString()*/); //transforma o valor bool em string
  print(ativo.toString() is String);
  print(ativo.toString() == 'false');

  if (ativo != null) {
    //if é sempre decisão bool
    print("Ativo não é null.");
  }

  if (nome.contains('a')) {
    print("Nome contém 'a'.");
  }
}
