/*Crie um aplicativo com um formulario, com as seguintes caracteristicas:
Campos necessarios

    Nome:
        Nao pode ser vazio
        Nao pode ter menos de 3 letras
        Precisa comecar com uma letra maiuscula
    Idade:
        Precisa ser um numero valida
        Precisa ser maior ou igual a 18
    Indicador de inativo

O formulario precisa de um botao Salvar. O botao de salvar somente atualiza os dados caso o formulario seja valido.

Os dados salvos no formulario devem ser mostrados abaixo do formulario, destacados em uma area colorida de acordo com o indicador de inativo (inativo deve ser cinza, caso contrario deve ser verde).

Caso existam dados invalidos no formulario, deve ser exibida a mensagem de erro abaixo do campo com os dados invalidos.*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Importar esta linha

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String nome = '';
  int idade = 0;
  bool indicador = false;
  bool nome_certo = false;
  bool idade_certa = false;
  bool indicador_certo = false;
  final nomeTextController = TextEditingController();
  final idadeTextController = TextEditingController();

  void clearText() {
    nomeTextController.clear();
    idadeTextController.clear();
  }

  @override
  void dispose() {
    nomeTextController.dispose();
    idadeTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Formulário')),
        ),
        body: Padding(
          padding: const EdgeInsets.all(60.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Nome',
                  ),
                  onChanged: (text) {
                    if (text.isEmpty ||
                        text.length < 3 ||
                        text[0] != nomeTextController.text[0].toUpperCase()) {
                      print('Erro, dados inválidos.');
                      nome_certo = false;
                    } else {
                      print('Dados válidos');
                      nome_certo = true;
                    }
                    setState(() {
                      nome = text;
                    });
                  },
                  controller: nomeTextController,
                ),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'Idade',
                  ),
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter
                        .digitsOnly // Restrição para apenas números
                  ],
                  onChanged: (text) {
                    int parsedAge = int.tryParse(text) ?? 0;
                    if (parsedAge < 18) {
                      print('Erro, dados inválidos.');
                      idade_certa = false;
                    } else {
                      print('Dados válidos');
                      idade_certa = true;
                    }
                    setState(() {
                      idade = parsedAge;
                    });
                  },
                  controller: idadeTextController,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: indicador,
                      onChanged: (value) {
                        if (indicador == true) {
                          print('Indicador inativo');
                          indicador_certo = false;
                        } else {
                          print('Indicador ativo');
                          indicador_certo = true;
                        }
                        setState(() {
                          indicador = value ?? false;
                        });
                      },
                      activeColor: indicador ? Colors.green : Colors.grey,
                    ),
                    const Text("Indicador (inativo ou ativo)"),
                  ],
                ),
                ElevatedButton(
                  child: const Text("Salvar"),
                  onPressed: () {
                    print("Pressionou o botão de salvar.");
                    print(
                        "Dados: Nome: $nome - Idade: $idade - Indicador: $indicador");
                    if (nome_certo &&
                        idade_certa &&
                        indicador_certo == true &&
                        nome[0] == nomeTextController.text[0].toUpperCase()) {
                      print("Dados salvos com sucesso.");
                      clearText();
                      setState(() {
                        indicador = false;
                      });
                    } else {
                      print("Erro. Algum dado está incorreto.");
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
