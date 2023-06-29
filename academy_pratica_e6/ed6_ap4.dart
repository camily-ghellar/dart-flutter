void main() {
  String nomeArbitrario = "meu_arquivo.txt";
  try {
    if (nomeArbitrario.length > 5) {
      //nome deve ter mais de uma letra, tirando os 3 dígitos da extensão do arquivo
      var arquivoTexto = ArquivoTexto(nomeArbitrario);
      arquivoTexto.abrir(nomeArbitrario);
      print("Arquivo aberto com sucesso.");
    } else {
      throw Exception();
    }
  } catch (e) {
    print("Entrada invalida. Digite um nome valido.");
  } finally {
    print("Fim do programa");
  }
}

abstract class Arquivo {
  void abrir(String nome);
}

class ArquivoTexto extends Arquivo {
  ArquivoTexto(this.nome);

  String nome;

  @override
  void abrir(String nome) {
    try {
      throw Exception("Erro ao abrir o arquivo $nome");
    } catch (e) {
      rethrow;
    }
  }
}
