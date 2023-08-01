/*Crie um aplicativo que apresente uma lista de cores de cores, 
cada linha deve ter uma cor diferente e o nome da cor. O app deve permitir clicar em uma cor, 
e direcionar o usuario para uma nova tela que deve ter a cor de fundo que o usuario interagiu na tela anterior.*/

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const _MyAppState(),
        '/azul': (context) => const TelaAzul(),
        '/rosa': (context) => const TelaRosa(),
        '/amarelo': (context) => const TelaAmarela(),
        '/verde': (context) => const TelaVerde(),
        '/vermelho': (context) => const TelaVermelha(),
        '/roxo': (context) => const TelaRoxa(),
        '/preto': (context) => const TelaPreta(),
      },
    );
  }
}

class _MyAppState extends StatefulWidget {
  const _MyAppState({Key? key}) : super(key: key);

  @override
  State<_MyAppState> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<_MyAppState> {
  Map<int, String> cores = {
    0: "azul",
    1: "rosa",
    2: "amarelo",
    3: "verde",
    4: "vermelho",
    5: "roxo",
    6: "preto",
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Lista de cores')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(60.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              for (var i in cores.entries)
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/${i.value}');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _cor(i.key),
                  ),
                  child: Text(
                    i.value,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Color _cor(int key) {
    switch (key) {
      case 0:
        return Colors.blue;
      case 1:
        return Colors.pink;
      case 2:
        return Colors.yellow;
      case 3:
        return Colors.green;
      case 4:
        return Colors.red;
      case 5:
        return Colors.purple;
      case 6:
        return Colors.black;
      default:
        return Colors.black;
    }
  }
}

class TelaAzul extends StatelessWidget {
  const TelaAzul({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Voltar para tela inicial."),
        ),
      ),
    );
  }
}

class TelaRosa extends StatelessWidget {
  const TelaRosa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Voltar para tela inicial."),
        ),
      ),
    );
  }
}

class TelaAmarela extends StatelessWidget {
  const TelaAmarela({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Voltar para tela inicial."),
        ),
      ),
    );
  }
}

class TelaVerde extends StatelessWidget {
  const TelaVerde({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Voltar para tela inicial."),
        ),
      ),
    );
  }
}

class TelaVermelha extends StatelessWidget {
  const TelaVermelha({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Voltar para tela inicial."),
        ),
      ),
    );
  }
}

class TelaRoxa extends StatelessWidget {
  const TelaRoxa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Voltar para tela inicial."),
        ),
      ),
    );
  }
}

class TelaPreta extends StatelessWidget {
  const TelaPreta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Voltar para tela inicial."),
        ),
      ),
    );
  }
}
