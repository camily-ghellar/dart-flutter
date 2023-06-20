void main() {
  const pessoa = Pessoa('Camily', 'Ghellar', 18, true, 50.95, null);
  print(pessoa.toString());
}

class Pessoa {
  const Pessoa(
    this.nome,
    this.sobrenome,
    this.idade,
    this.ativo,
    this.peso,
    this.nacionalidade,
  );

  final String nome;
  final String sobrenome;
  final int idade;
  final bool ativo;
  final double peso;
  final String? nacionalidade;

  @override
  String toString() {
    var formatado = "";

    formatado += "Nome completo: $nome $sobrenome\n";

    if (idade < 18) {
      formatado += "Idade: $idade (menor de idade)\n";
    } else {
      formatado += "Idade: $idade (maior de idade)\n";
    }

    if (ativo == true) {
      formatado += "Situacao: Ativo\n";
    } else {
      formatado += "Situacao: Inativo\n";
    }

    formatado += "Peso: $peso\n";

    if (nacionalidade == null) {
      formatado += "Nacionalidade: Nao informada\n";
    } else {
      formatado += "Nacionalidade: $nacionalidade\n";
    }

    return formatado;
  }
}
