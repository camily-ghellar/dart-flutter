void main() {
  Map<String, List<String>> cidades = {
    'SC': ['Blumenau', 'Gaspar', 'Florianopolis', 'Itajaí'],
    'RS': ['Santa Maria', 'Porto Alegre', 'Pelotas', 'Gramado'],
    'SP': ['São Paulo', 'Sorocaba', 'Campos do Jordao', 'Guaruja'],
    'MG': ['Belo Horizonte', 'Berlinda', 'Uberlandia', 'Ouro Preto'],
    'RN': ['Natal', 'Mossoró', 'Parnamirim', 'São Gonçalo do Amarante'],
    'RJ': ['Rio de Janeiro', 'Niteroi', 'Angra dos Reis', 'Petrópolis'],
    'GO': ['Goiania', 'Anapolis', 'Rio Verde', 'Aparecida de Goiania']
  };

  print("Estados:");
  cidades.keys.forEach((elemento) {
    print('$elemento;');
  });

  List<String> cidades_SC = cidades['SC']!;
  cidades_SC.sort();

  print("\nCidades de SC: $cidades_SC");

  List<String> todas_cidades = cidades.values.expand((lista) => lista).toList();

  todas_cidades.sort();

  print("\nTodas as cidades em ordem alfabetica: ");
  todas_cidades.forEach((cidade) {
    cidades.forEach((chave, lista) {
      if (lista.contains(cidade)) {
        print('$cidade - $chave');
      }
    });
  });
}
