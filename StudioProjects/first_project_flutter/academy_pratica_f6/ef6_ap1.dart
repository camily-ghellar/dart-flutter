/*Crie um aplicativo em Flutter que permita o usuario:

    Ver a lista de pessoas cadastradas
    Incluir novas pessoas na lista
    Filtrar a lista de pessoas cadastradas
    Alterar os dados de uma pessoa cadastrada
    Excluir pessoa cadastrada

Para cada pessoa, e necessario incluir no formulario os seguintes dados:

    Nome completo
    E-mail
    Telefone
    Link do GitHub
    Tipo sanguineo (Opcoes: "A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB-")

Na listagem de pessoas, devem aparecer todos os dados da pessoa. 
TambÃ©m deve ser considerado o tipo sanguineo da pessoa, e alterada a cor do item na lista, 
conforme a lista abaixo:

    A+ (Azul)
    A- (Vermelho)
    B+ (Roxo)
    B- (Laranja)
    O+ (Verde)
    O- (Amarelo)
    AB+ (Ciano)
    AB- (Branco)

O aplicativo precisa ser dividido entre 5 telas:

    Tela inicial (com botoes que direcione para as demais telas)
    Tela de listagem de pessoas (filtro deve ser nessa tela)
    Tela de inclusao e ediÃ§Ã£o de pessoas

Para desenvolver esse aplicativo, utilize o codigo base fornecido implementando 
um Provider para compartilhar o estado da lista de pessoas entre as telas solicitadas. */

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => EstadoListaDePessoas(),
      child: const MyApp(),
    ),
  );
}

enum TipoSanguineo {
  aPositivo,
  aNegativo,
  bPositivo,
  bNegativo,
  oPositivo,
  oNegativo,
  abPositivo,
  abNegativo,
}

class Pessoa {
  const Pessoa({
    this.nome,
    this.email,
    this.telefone,
    this.github,
    this.tipoSanguineo,
  });

  final String? nome;
  final String? email;
  final String? telefone;
  final String? github;
  final TipoSanguineo? tipoSanguineo;
}

class EstadoListaDePessoas with ChangeNotifier {
  final _listaDePessoas = <Pessoa>[];

  List<Pessoa> get pessoas => List.unmodifiable(_listaDePessoas);

  void incluir(Pessoa pessoa) {
    _listaDePessoas.add(pessoa);
    notifyListeners();
  }

  void excluir(Pessoa pessoa) {
    _listaDePessoas.remove(pessoa);
    notifyListeners();
  }

  void editar(Pessoa pessoaAntiga, Pessoa pessoaNova) {
    final index = _listaDePessoas.indexOf(pessoaAntiga);
    if (index != -1) {
      _listaDePessoas[index] = pessoaNova;
      notifyListeners();
    }
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: (settings) {
        if (settings.name == '/editarPessoas') {
          final pessoa = settings.arguments as Pessoa;
          return MaterialPageRoute(
            builder: (context) => _EditarPessoas(
              pessoa: pessoa,
            ),
          );
        }
        return null;
      },
      routes: {
        '/': (context) => const _MyAppState(),
        '/listarPessoas': (context) => const _ListarPessoas(),
        '/incluirPessoas': (context) => const _IncluirPessoas(),
        '/excluirPessoas': (context) => const _ExcluirPessoas(),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Lista de pessoas')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/listarPessoas');
              },
              child: const Text("Listar pessoas"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/incluirPessoas');
              },
              child: const Text("Incluir pessoas"),
            ),
          ],
        ),
      ),
    );
  }
}

class _ListarPessoas extends StatefulWidget {
  const _ListarPessoas({Key? key}) : super(key: key);

  @override
  _ListarPessoasState createState() => _ListarPessoasState();
}

class _ListarPessoasState extends State<_ListarPessoas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Listar pessoas')),
      ),
      body: Consumer<EstadoListaDePessoas>(
        builder: (context, estadoListaDePessoas, _) {
          List<Pessoa> pessoas = estadoListaDePessoas.pessoas;
          return ListView.builder(
            itemCount: pessoas.length,
            itemBuilder: (context, index) {
              final pessoa = pessoas[index];
              return ListTile(
                title: Text(pessoa.nome!),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email: ${pessoa.email}"),
                    Text("Telefone: ${pessoa.telefone}"),
                    Text("GitHub: ${pessoa.github}"),
                    Text("Tipo sanguíneo: ${pessoa.tipoSanguineo}"),
                  ],
                ),
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    '/editarPessoas',
                    arguments: pessoa,
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}

class _EditarPessoas extends StatefulWidget {
  final Pessoa pessoa;
  const _EditarPessoas({Key? key, required this.pessoa}) : super(key: key);

  @override
  _EditarPessoasState createState() => _EditarPessoasState();
}

class _EditarPessoasState extends State<_EditarPessoas> {
  final _formKey = GlobalKey<FormState>();
  String? nome;
  String? email;
  String? telefone;
  String? github;
  TipoSanguineo? tipoSanguineo;

  @override
  void initState() {
    super.initState();

    nome = widget.pessoa.nome;
    email = widget.pessoa.email;
    telefone = widget.pessoa.telefone;
    github = widget.pessoa.github;
    tipoSanguineo = widget.pessoa.tipoSanguineo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Editar pessoa')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                initialValue: nome,
                decoration: const InputDecoration(
                  labelText: 'Nome',
                ),
                onChanged: (value) {
                  setState(() {
                    nome = value;
                  });
                },
              ),
              TextFormField(
                initialValue: email,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              TextFormField(
                initialValue: telefone,
                decoration: const InputDecoration(
                  labelText: 'Telefone',
                ),
                onChanged: (value) {
                  setState(() {
                    telefone = value;
                  });
                },
              ),
              TextFormField(
                initialValue: github,
                decoration: const InputDecoration(
                  labelText: 'GitHub',
                ),
                onChanged: (value) {
                  setState(() {
                    github = value;
                  });
                },
              ),
              DropdownButtonFormField<TipoSanguineo>(
                decoration: const InputDecoration(
                  labelText: 'Tipo sanguíneo',
                ),
                value: tipoSanguineo,
                onChanged: (value) {
                  setState(() {
                    tipoSanguineo = value!;
                  });
                },
                items: TipoSanguineo.values.map((tipo) {
                  return DropdownMenuItem<TipoSanguineo>(
                    value: tipo,
                    child: Text(tipo.toString().split('.').last),
                  );
                }).toList(),
              ),
              ElevatedButton(
                onPressed: () {
                  final editedPerson = Pessoa(
                    nome: nome,
                    email: email,
                    telefone: telefone,
                    github: github,
                    tipoSanguineo: tipoSanguineo,
                  );
                  Provider.of<EstadoListaDePessoas>(context, listen: false)
                      .editar(widget.pessoa, editedPerson);
                  Navigator.pop(context);
                },
                child: const Text("Salvar alterações"),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/excluirPessoas');
                },
                child: const Text("Excluir pessoas"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ExcluirPessoas extends StatefulWidget {
  const _ExcluirPessoas({Key? key}) : super(key: key);

  @override
  _ExcluirPessoasState createState() => _ExcluirPessoasState();
}

class _ExcluirPessoasState extends State<_ExcluirPessoas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Excluir pessoas')),
      ),
      body: Consumer<EstadoListaDePessoas>(
        builder: (context, estadoListaDePessoas, _) {
          List<Pessoa> pessoas = estadoListaDePessoas.pessoas;
          return ListView.builder(
            itemCount: pessoas.length,
            itemBuilder: (context, index) {
              final pessoa = pessoas[index];
              return ListTile(
                title: Text(pessoa.nome!),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Email: ${pessoa.email}"),
                    Text("Telefone: ${pessoa.telefone}"),
                    Text("GitHub: ${pessoa.github}"),
                    Text("Tipo sanguíneo: ${pessoa.tipoSanguineo}"),
                  ],
                ),
                onTap: () {
                  estadoListaDePessoas.excluir(pessoa);
                },
              );
            },
          );
        },
      ),
    );
  }
}

class _IncluirPessoas extends StatefulWidget {
  const _IncluirPessoas({Key? key}) : super(key: key);

  @override
  _IncluirPessoasState createState() => _IncluirPessoasState();
}

class _IncluirPessoasState extends State<_IncluirPessoas> {
  final _formKey = GlobalKey<FormState>();
  String? nome;
  String? email;
  String? telefone;
  String? github;
  TipoSanguineo? tipoSanguineo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Incluir pessoas')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nome',
                ),
                onChanged: (value) {
                  setState(() {
                    nome = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Telefone',
                ),
                onChanged: (value) {
                  setState(() {
                    telefone = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'GitHub',
                ),
                onChanged: (value) {
                  setState(() {
                    github = value;
                  });
                },
              ),
              DropdownButtonFormField<TipoSanguineo>(
                decoration: const InputDecoration(
                  labelText: 'Tipo sanguíneo',
                ),
                value: tipoSanguineo,
                onChanged: (value) {
                  setState(() {
                    tipoSanguineo = value!;
                  });
                },
                items: TipoSanguineo.values.map((tipo) {
                  return DropdownMenuItem<TipoSanguineo>(
                    value: tipo,
                    child: Text(tipo.toString().split('.').last),
                  );
                }).toList(),
              ),
              ElevatedButton(
                onPressed: () {
                  final pessoa = Pessoa(
                    nome: nome,
                    email: email,
                    telefone: telefone,
                    github: github,
                    tipoSanguineo: tipoSanguineo,
                  );
                  Provider.of<EstadoListaDePessoas>(context, listen: false)
                      .incluir(pessoa);
                  Navigator.pop(context);
                },
                child: const Text("Adicionar pessoa"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
