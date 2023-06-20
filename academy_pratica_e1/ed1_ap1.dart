void main() {
  String nome = 'Camily';
  String sobrenome = 'Ghellar';
  int idade = 18;
  bool ativo = true;
  double peso = 50.95;
  String? nacionalidade = null;
  print("Nome completo: $nome $sobrenome");
  if (idade < 18) {
    print("Idade: $idade (menor de idade)");
  } else {
    print("Idade: $idade (maior de idade)");
  }

  if (ativo == true) {
    print("Situacao: Ativo");
  } else {
    print("Situacao: Inativo");
  }
  print("Peso: $peso");
  if (nacionalidade == null) {
    print("Nacionalidade: Nao informada");
  } else {
    print("Nacionalidade: $nacionalidade");
  }
}
