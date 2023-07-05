void main() {
  var cachorro = Cachorro();
  print(cachorro.comer());
  print(cachorro.beber());
  print(cachorro.latir());
}

abstract class Animal {
  String comer() {
    return "O animal esta comendo.";
  }

  String beber() {
    return "O animal esta bebendo.";
  }
}

class Cachorro extends Animal {
  String latir() {
    return "O cachorro esta latindo.";
  }
}
