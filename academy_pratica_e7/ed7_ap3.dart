void main() {
  List produtos = <Produto>[];
  List nome = ["arroz", "feijão", "alface", "tomate", "carne de frango"];
  List preco = [10.5, 6.9, 3.0, 4.0, 18.4];
  int percent = 10;

  for (int i = 0; i < nome.length; i++) {
    var produto = Produto(nome[i], preco[i]);
    var desconto_produto = produto.desconto(percent);

    produtos.add(produto);

    print(
      "Novo preco do produto ${produtos[i].nome} (com desconto): $desconto_produto\n",
    );
  }
}

class Produto {
  Produto(this.nome, this.preco);
  String nome;
  double preco;

  double desconto(int desconto) {
    double novoPreco = preco - (preco * (desconto / 100));
    return novoPreco;
  }
}
