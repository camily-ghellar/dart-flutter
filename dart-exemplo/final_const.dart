void main() {
  final valor =
      _getValor(); //final pode mudar de valor em tempo de compilação, pode pegar valor de função externa, e consequentemente muda o valor.
  // const valor = 'Dart 14'; const não pode mudar valor, tem que ter valor conhecido em tempo de compilação e execução (não pode pegar valor de função externa).
  //Pode transformar os valores de lista final em constantes adicionando o const antes dos valores da lista assim: final listaLinguagens = const ["Dart", "C"];
  print(valor);
}

String _getValor() => "Dart 14";

/* void main(){
  final listaLinguagens = ["Dart", "C"];
  print(listaLinguagens);
  --> pode adicionar ou remover valores, só não pode declarar a lista de novo.
  listaLinguagens.add("Python");
  listaLinguagens.removeAt(0);
}

   void main(){
    listaLinguagens = ["Dart", "C"];
    print(listaLinguagens);
    --> não pode adicionar ou remover valores na lista após a primeira e única declaração.
   }
*/

