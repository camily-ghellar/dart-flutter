void main() {
  String nome1 = 'Camily';
  String nome2 = "Camily";
  String nome3 = '''Camily''';
  String nome4 = """
  Camily
  """;
  String string1 = 'It\'s great';
  String string2 = "It's great";

  String string3 = "Estou estudando " + "Dart";
  String linguagem = "Dart" /*.toUpperCase()*/;
  String string4 = "Estou estudando " + linguagem;
  String string5 = "Estou estudando $linguagem";
  String maiusculo = "Estou estudando ${linguagem.toUpperCase()}";

  print(nome1);
  print(nome2);
  print(nome3);
  print(nome4);
  print(string1);
  print(string2);
  print(string3);
  print(string4);
  print(string5);
  print(maiusculo);
}
