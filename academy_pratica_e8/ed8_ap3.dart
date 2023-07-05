void main() {
  var cachorro = Cachorro();
  var programador = Programador();
  print(cachorro.comer());
  print(cachorro.latir());
  print(programador.falar());
  print(programador.codar());
}

abstract class Animal {
  String comer() {
    return "O animal esta comendo.";
  }
}

abstract class Pessoa {
  String falar() {
    return "A pessoa esta falando.";
  }
}

class Cachorro extends Animal {
  String latir() {
    return "O cachorro esta latindo.";
  }
}

class Programador extends Pessoa {
  String codar() {
    return "O programador esta codando.";
  }
}
