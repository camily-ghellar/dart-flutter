import 'dart:math';

void main() {
  var pessoa = Pessoa();
  String nome = "Ciclano de Souza";
  int idade = Random().nextInt(99) + 1;
  double altura = Random().nextDouble() * 1.3 + 1;
  pessoa.nome = nome;
  pessoa.idade = idade;
  pessoa.altura = altura;

  print("Nome: ${pessoa.nome}");
  print("Idade: ${pessoa.idade}");
  print("Altura: ${pessoa.altura.toStringAsFixed(2)}");
}

class Pessoa {
  String _nome = '';
  int _idade = 0;
  double _altura = 0.0;

  int get idade => _idade;

  set idade(int age) {
    if (age >= 0) {
      _idade = age;
    } else {
      print("Idade inválida.");
    }
  }

  String get nome => _nome;

  set nome(String name) {
    _nome = name;
  }

  double get altura => _altura;

  set altura(double height) {
    _altura = height;
  }
}
