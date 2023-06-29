void main() {
  Map pessoas = {
    'Nelson': null,
    'Jane': null,
    'Jack': 16,
    'Rupert': 37,
    'Andy': 13,
    'Kim': 27,
    'Robert': 31
  };

  for (var i in pessoas.entries) {
    print("${i.key} - ${i.value == null ? 'idade nao informada' : i.value}");
  }
}
