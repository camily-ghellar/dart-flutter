//try - catch
//e: objeto -> qual erro ocorreu
//Stack trace: s -> todos os detalhes do erro
//on
//finally
//rethrow

/*void main(args) {
  /*try {
    dynamic valor = true;
    valor++;
  } catch (e, s) {
    print("Deu algo errado : $e");
    print(s);
  } */

  try {
    gerarErro(int.parse(args[0]));
  } on Valor1Exception {
    print("Valor 1");
  } on Valor2Exception {
    print("Valor 2");
  } on Valor3Exception {
    print("Valor 3");
  } on Exception catch (e, s) {
    print("Não foi possível realizar a operação $e $s");
  } catch (e) {
    print("Houve um erro.");
  } finally {
    print("Finalizado.");
  }
}

void gerarErro(int n) {
  if (n == 1) {
    throw Valor1Exception();
  }
  if (n == 2) {
    throw Valor2Exception();
  }
  if (n == 3) {
    throw Valor3Exception();
  }
  throw Exception();
}

class Valor1Exception implements Exception {}

class Valor2Exception implements Exception {}

class Valor3Exception implements Exception {}


void main(List<String> args) {
  final valor = int.parse(args[0]);

  contaBancaria(valor);
}

void contaBancaria(int valor) {
  final saldo = 100;
  if (valor > saldo) {
    throw Exception("Saldo insuficiente.");
  }
  if (valor < 0) {
    throw Exception("Valor negativo não é aceito.");
  }
  print("Valor retirado da conta: $valor");
}
*/

void main(List<String> args) {
  final valor = int.parse(args[0]);

  contaBancaria(valor);
}

void contaBancaria(int valor) {
  final saldo = 100;
  if (valor > saldo) {
    throw SaldoInsuficienteException(valor);
  }
  if (valor < 0) {
    throw ValorNegativoException(valor);
  }
  print("Valor retirado da conta: $valor");
}

class SaldoInsuficienteException implements Exception {
  final valor;
  SaldoInsuficienteException(this.valor);
  @override
  String toString() {
    return "SaldoInsuficienteException: $valor";
  }
}

class ValorNegativoException implements Exception {
  final valor;
  ValorNegativoException(this.valor);
  @override
  String toString() {
    return "ValorNegativoException: $valor";
  }
}


/* 
void main(){
  TaxaCalculador().calcular(10);
}
abstract class Calculador {
  int calcular(int numero);
}

class TaxaCalculador implements Calculador {
  @override
  int calcular(int numero){
    throw UnimplementedError();
  }
}
*/