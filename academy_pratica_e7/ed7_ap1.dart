void main() {
  double saldo = 500.00;
  String titular = "Fulano da Silva";
  double valor_depositar = 100.50;
  double valor_sacar = 50.0;

  print("Saldo atual: $saldo");

  var conta_bancaria = ContaBancaria();
  var depositandoDinheiro =
      conta_bancaria.depositarDinheiro(saldo, titular, valor_depositar);
  saldo = depositandoDinheiro;
  print("Depositando $valor_depositar reais na conta bancaria.");
  print("Saldo atual: $saldo");

  var sacandoDinheiro =
      conta_bancaria.sacarDinheiro(saldo, titular, valor_sacar);
  saldo = sacandoDinheiro;
  print("Sacando $saldo reais da conta bancaria.");
  print("Saldo atual: $sacandoDinheiro");
  saldo = sacandoDinheiro;
}

class ContaBancaria {
  double depositarDinheiro(saldo, titular, valor_depositar) {
    saldo = saldo + valor_depositar;
    return saldo;
  }

  double sacarDinheiro(saldo, titular, valor_sacar) {
    saldo = saldo - valor_sacar;
    return saldo;
  }
}
