void main() {
  num valorProduto = 10;
  num valorComDesconto = 7;

  var percentDesconto = Desconto(valorProduto, valorComDesconto);
  print(
      "O produto custava $valorProduto reais e foi vendido por $valorComDesconto reais. O desconto dado foi $percentDesconto%.");
}

double Desconto(num valorProduto, num valorComDesconto) {
  double percent = 100 - ((valorComDesconto * 100) / valorProduto);
  return percent;
}
