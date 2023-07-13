import 'package:flutter/material.dart';
import 'dart:math';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final random = Random();

  var botaoCorreto = 0;
  var clicks = 0;
  var ganhou = false;
  var perdeu = false;
  int _contador_v = 0;
  int _contador_d = 0;

  @override
  void initState() {
    super.initState();
    botaoCorreto = random.nextInt(3);
  }

  void tentativa(int opcao) {
    setState(() {
      if (opcao == botaoCorreto) {
        ganhou = true;
        _contador_v++;
      } else {
        clicks++;
      }

      if (clicks >= 2 && !ganhou) {
        perdeu = true;
        _contador_d++;
      }
    });
  }

  void reiniciarJogo() {
    setState(() {
      botaoCorreto = random.nextInt(3);
      clicks = 0;
      ganhou = false;
      perdeu = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (ganhou) {
      return Container(
        color: Colors.green,
        child: Column(
          children: <Widget>[
            const Text('Você ganhou'),
            ElevatedButton(
              onPressed: reiniciarJogo,
              child: const Text('Reiniciar jogo.'),
            ),
            const Text(
              'Quantidade de vitórias no jogo:',
            ),
            Text(
              '$_contador_v',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      );
    }

    if (perdeu) {
      return Container(
        color: Colors.red,
        child: Column(
          children: [
            const Text('Você perdeu'),
            ElevatedButton(
              onPressed: reiniciarJogo,
              child: const Text('Reiniciar jogo.'),
            ),
            const Text(
              'Quantidade de derrotas no jogo:',
            ),
            Text(
              '$_contador_d',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      );
    }

    return Column(
      children: [
        ElevatedButton(
          child: const Text('A'),
          onPressed: () {
            tentativa(0);
          },
        ),
        ElevatedButton(
          child: const Text('B'),
          onPressed: () {
            tentativa(1);
          },
        ),
        ElevatedButton(
          child: const Text('C'),
          onPressed: () {
            tentativa(2);
          },
        ),
      ],
    );
  }
}
