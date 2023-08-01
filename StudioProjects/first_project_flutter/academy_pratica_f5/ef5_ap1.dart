/*Crie um aplicativo que acesse a url informada abaixo, 
e apresente uma lista das imagens retornadas. 
Cada item dessa lista, quando clicado, ira direcionar 
para uma pagina apresentando a imagem.

    URL: https://raw.githubusercontent.com/LinceTech/dart-workshops/main/flutter-async/ap_1/request.json

{
    "id": 1,
    "title": "accusamus beatae ad facilis cum similique qui sunt",
    "url": "https://images.unsplash.com/photo-1688577585718-9e446280c5d4",
    "thumbnailUrl": "https://images.unsplash.com/photo-1688577585718-9e446280c5d4?auto=format&fit=crop&w=200&q=100"
  },
*/

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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
      },
      onGenerateRoute: (settings) {
        if (settings.name == '/imagem') {
          final Produto produto = settings.arguments as Produto;
          return MaterialPageRoute(
            builder: (context) => TelaImagem(produto: produto),
          );
        }
        return null;
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
  Future<List<Produto>> _getProdutos() async {
    Uri uri = Uri.parse(
        'https://raw.githubusercontent.com/LinceTech/dart-workshops/main/flutter-async/ap_1/request.json');
    var response = await http.get(uri);
    var dados = json.decode(response.body) as List;

    List<Produto> produtos = [];

    dados.forEach((element) {
      Produto produto = Produto(
        element['id'],
        element['title'],
        element['url'],
      );
      produtos.add(produto);
    });
    return produtos;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Lista de produtos")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<List<Produto>>(
          future: _getProdutos(),
          builder:
              (BuildContext context, AsyncSnapshot<List<Produto>> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Text("Carregando dados...");
            } else if (snapshot.hasError) {
              return Text("Erro: ${snapshot.error}");
            } else {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, indice) {
                  return ListTile(
                    title: Text(snapshot.data![indice].title),
                    onTap: () {
                      print(
                          "Produto selecionado: ${snapshot.data![indice].title}");
                      Navigator.pushNamed(
                        context,
                        '/imagem',
                        arguments: snapshot.data![indice],
                      );
                    },
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

class TelaImagem extends StatelessWidget {
  final Produto produto;

  const TelaImagem({required this.produto, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(produto.title),
      ),
      body: Center(
        child: Column(
          children: [
            Image.network(produto.imagem),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Voltar para tela inicial."),
            ),
          ],
        ),
      ),
    );
  }
}

class Produto {
  final int id;
  final String title;
  final String imagem;

  Produto(this.id, this.title, this.imagem);

  factory Produto.fromJson(Map<String, dynamic> json) {
    return Produto(
      json['id'],
      json['title'],
      json['url'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': this.id,
        'title': this.title,
        'imagem': this.imagem,
      };
}
