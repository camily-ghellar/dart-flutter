import 'dart:math';

void main() {
  List<String> nomes = [
    'Ana',
    'Maria',
    'Francisco',
    'Joao',
    'Pedro',
    'Gabriel',
    'Rafaela',
    'Marcio',
    'Jose',
    'Carlos',
    'Patricia',
    'Helena',
    'Camila',
    'Mateus',
    'Gabriel',
    'Samuel',
    'Karina',
    'Antonio',
    'Daniel',
    'Joel',
    'Cristiana',
    'Sebastiao',
    'Paula'
  ];
  List<String> sobrenomes = [
    ' Silva',
    ' Souza',
    ' Almeida',
    ' Azevedo',
    ' Braga',
    ' Barros',
    ' Campos',
    ' Cardoso',
    ' Costa',
    ' Teixeira',
    ' Santos',
    ' Rodrigues',
    ' Ferreira',
    ' Alves',
    ' Pereira',
    ' Lima',
    ' Gomes',
    ' Ribeiro',
    ' Carvalho',
    ' Lopes',
    ' Barbosa'
  ];

  int nomeAleatorio = Random().nextInt(24);
  int sobrenomeAleatorio = Random().nextInt(22);

  print("${nomes[nomeAleatorio]} ${sobrenomes[sobrenomeAleatorio]}");
}
