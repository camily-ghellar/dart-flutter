import 'dart:async';

Future<void> main() async {
  
  List<String> urls = [
    'https://example.com/imagem1.jpg',
    'https://example.com/imagem2.jpg',
    'https://example.com/imagem3.jpg',
  ];
  
  print('Baixando imagens...');
  await baixarImagens(urls[0]);
  await baixarImagens(urls[1]);
  await baixarImagens(urls[2]);
  print('Download concluido!');
}  

Future<void> baixarImagens(String url) async{
  print('Imagem $url baixada com sucesso!');
}

