void main() {
  String paragrafo =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam venenatis nunc et posuere vehicula. Mauris lobortis quam id lacinia porttitor.";

  List<String> listaPalavras = paragrafo.split(' ');
  List<String> listaFrases = paragrafo.split('.');

  int qntdPalavras = listaPalavras.length;
  int qntdFrases = listaFrases.length;
  int qntdLetras = paragrafo.length;

  int contVogais = 0;
  Set<String> consoantes = Set<String>();

  for (int i = 0; i < qntdLetras; i++) {
    String letra = paragrafo[i].toLowerCase();
    if ('aeiou'.contains(letra)) {
      contVogais++;
    } else if (letra != ' ' && letra != ',' && letra != '.') {
      consoantes.add(letra);
    }
  }
  List listCons = consoantes.toList();
  listCons.sort();

  print("Paragrafo: $paragrafo");
  print("Numero de palavras: $qntdPalavras");
  print("Tamanho do texto: $qntdLetras");
  print("Numero de frases: ${qntdFrases - 1}");
  print("Numero de vogais: $contVogais");
  print("Consoantes encontradas: $listCons");
}
