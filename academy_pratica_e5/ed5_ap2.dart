import 'dart:math';

void main() {
  int n1 = Random().nextInt(26);
  int n2 = Random().nextInt(26);
  int n3 = Random().nextInt(26);
  int n4 = Random().nextInt(26);
  int n5 = Random().nextInt(26);

  var execucao1 = retornarLetra(n1);
  var execucao2 = retornarLetra(n2);
  var execucao3 = retornarLetra(n3);
  var execucao4 = retornarLetra(n4);
  var execucao5 = retornarLetra(n5);

  print("Numero ${n1 + 1} -> Letra $execucao1");
  print("Numero ${n2 + 1} -> Letra $execucao2");
  print("Numero ${n3 + 1} -> Letra $execucao3");
  print("Numero ${n4 + 1} -> Letra $execucao4");
  print("Numero ${n5 + 1} -> Letra $execucao5");
}

String retornarLetra(int n) {
  List<String> alfabeto = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  String letra = alfabeto[n];
  return letra;
}
