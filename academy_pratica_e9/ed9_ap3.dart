import 'dart:async';

Future<void> main() async {
  print('Iniciando lancamento');
  
  for (int i = 5; i > 0; i--){
    await contagemLancamento(i);
  }

  print('Foguete lancado!');
}  

Future<void> contagemLancamento(int i) async{
  print(i);
}

