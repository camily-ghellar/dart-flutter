import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RandomButtonPage(),
    );
  }
}

class RandomButtonPage extends StatefulWidget {
  @override
  _RandomButtonPageState createState() => _RandomButtonPageState();
}

class _RandomButtonPageState extends State<RandomButtonPage> {
  String? correctButton;
  String message = '';
  int attempts = 0;
  bool gameOver = false;

  @override
  void initState() {
    super.initState();
    generateRandomButton();
  }

  void generateRandomButton() {
    List<String> buttons = ['A', 'B', 'C'];
    Random random = Random();
    correctButton = buttons[random.nextInt(buttons.length)];
  }

  void checkButton(String button) {
    setState(() {
      attempts++;

      if (button == correctButton) {
        message = 'Você acertou!';
        gameOver = true;
      } else {
        message = 'Tente novamente.';
        if (attempts == 2) {
          message = 'Você perdeu!';
          gameOver = true;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Color? backgroundColor;
    if (gameOver) {
      backgroundColor = attempts <= 2 ? Colors.green : Colors.red;
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Clique no botão correto!',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (!gameOver) {
                  checkButton('A');
                }
              },
              child: const Text('A'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (!gameOver) {
                  checkButton('B');
                }
              },
              child: const Text('B'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (!gameOver) {
                  checkButton('C');
                }
              },
              child: const Text('C'),
            ),
            const SizedBox(height: 20),
            Text(
              message,
              style: const TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
