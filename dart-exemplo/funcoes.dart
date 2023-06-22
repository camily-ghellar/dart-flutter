void main() {
  criarLogin('camily@gmail.com', 'camily123');
  //criarLogin('camily@gmail.com');

  adicionarUsuario('Blumenau',
      nome: 'Camily', email: 'camily@gmail.com', idade: 18, cep: '12345-678');

  print(calcular());
}

void criarLogin(String email, String senha) {
  print('Email: $email -- Senha: $senha');
}

/*void criarLogin(String email, [String? senha]) {
  print('Email: $email -- Senha: ${senha == null ? '123456' : senha}');
}

void criarLogin(String email, [String senha = '123456']) {
  print('Email: $email -- Senha: ${senha}');
}
*/

void adicionarUsuario(String cidade,
    {required String nome,
    required String email,
    required int idade,
    //int idade = 18,
    required String cep}) {
  print("Adicionando usuário $nome $email $idade $cep");
}

int calcular() {
  return 2 + 2;
}
