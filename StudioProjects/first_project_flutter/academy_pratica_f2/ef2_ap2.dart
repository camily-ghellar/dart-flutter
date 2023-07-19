import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

/*
    Retangulos internos: 50 x 50
    Retangulos externos: 100 x 100
    Cores, em sequencia:
        Vermelho, Verde, Azul
        Ciano, Roxo, Amarelo
        Vermelho, Amarelo, Azul
        Roxo intenso, Laranja intenso, Amarelo, Verde claro
    Cores de fundo, em sequencia:
        Cinza
        Preto
        Sem cor de fundo
        Branco
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
      ),
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Pilha(
            backgroundColor: Colors.grey,
            children: [
              Colors.red,
              Colors.green,
              Colors.blue,
            ],
          ),
          SizedBox(width: 16),
          Pilha(
            backgroundColor: Colors.black,
            children: [
              Colors.cyan,
              Colors.purple,
              Colors.yellow,
            ],
          ),
          SizedBox(width: 16),
          Pilha(
            children: [
              Colors.red,
              Colors.yellow,
              Colors.blue,
            ],
          ),
          SizedBox(width: 16),
          Pilha(
            backgroundColor: Colors.white,
            children: [
              Colors.deepPurple,
              Colors.deepOrange,
              Colors.yellow,
              Colors.lightGreen,
            ],
          ),
        ],
      ),
    );
  }
}

class Pilha extends StatelessWidget {
  const Pilha({
    this.backgroundColor,
    required this.children,
  });

  final Color? backgroundColor;
  final List<Color> children;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      color: backgroundColor,
      width: 100,
      height: 100,
      child: Stack(
        children: [
          for (var index = 0; index < children.length; index++)
            Positioned(
              top: index * 8 + 8,
              left: index * 8 + 8,
              child: Container(
                width: 50,
                height: 50,
                color: children[index],
              ),
            ),
        ],
      ),
    );
  }
}
