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
  var color = Colors.red;
  final random = Random();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Texto de cor aleatória',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(color: color),
        ),
        ElevatedButton(
          child: const Text('Clique aqui para sortear uma cor'),
          onPressed: () {
            setState(() {
              switch (random.nextInt(8)) {
                case 0:
                  print('Alterando para cor vermelha');
                  color = Colors.red;
                  break;
                case 1:
                  print('Alterando para cor verde');
                  color = Colors.green;
                  break;
                case 2:
                  print('Alterando para cor azul');
                  color = Colors.blue;
                  break;
                case 3:
                  print('Alterando para cor roxa');
                  color = Colors.purple;
                  break;
                case 4:
                  print('Alterando para cor laranja');
                  color = Colors.orange;
                  break;
                case 5:
                  print('Alterando para cor cinza');
                  color = Colors.grey;
                  break;
                case 6:
                  print('Alterando para cor marrom');
                  color = Colors.brown;
                  break;
                case 7:
                  print('Alterando para cor rosa');
                  color = Colors.pink;
                  break;
              }
            });
          },
        ),
      ],
    );
  }
}
