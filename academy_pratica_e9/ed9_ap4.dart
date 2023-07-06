import 'dart:async';

void main() async {
  print('Início da busca');

  await buscarDados();

  print('Fim da busca');
}

Future<void> buscarDados() async {
  await Future.delayed(Duration(seconds: 2));
  print("Buscando dados...");
  await Future.delayed(Duration(seconds: 2));
}
