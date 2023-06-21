void main() {
//possui chave (key) e valor (value)
  var coments = {
    'Python': 'Linguagem Python',
    'PHP': 'Linguagem PHP',
    'Dart': 'Linguagem Dart',
  };

  /*Map<String, String> comentarios = Map<String, String>();
  comentarios['Java'] = 'Comentário sobre Java';
  comentarios['C'] = 'Comentário sobre C';
  comentarios['JavaScript'] = 'Comentário sobre JavaScript';

  print(coments);
  print(comentarios);

  //imprime somente as chaves do mapa
  coments.keys.forEach((elemento) {
    print(elemento);
  });

  //imprime somente os valores do mapa
  coments.values.forEach((elemento) {
    print(elemento);
  });

  comentarios.forEach((key, value) {
    print('$key => $value');
  }); */

  for (var i in coments.entries) {
    print(i.key);
    print(i.value);
  }

  Map<String, List<String>> continentes = Map<String, List<String>>();
  continentes['Europa'] = ['Portugal', 'Espanha', 'Itália', 'Alemanha'];
  continentes['América'] = ['Estados Unidos', 'Brasil', 'Canadá', 'Jamaica'];
  continentes['África'] = ['Angola', 'Nigéria', 'Egito', 'Africa do Sul'];
  continentes['Ásia'] = ['Coreia do Sul', 'Japão', 'India', 'Malásia'];
  continentes['Oceania'] = ['Nova Zelândia', 'Australia'];

  continentes.forEach((key, value) {
    print("""
      $key
        ${value}
    """);
  });

  Map<String, List<String>>? teste_vazio = null;

  var novoContinente = {...continentes, ...?teste_vazio, 'Antartida': 'nenhum'};
  print(novoContinente);
}
