import 'dart:math';

enum GenerosMusicais {
  trap,
  pagode,
  samba,
  rock,
  pop,
  rap,
}

void main() {
  var generoFavorito = GenerosMusicais.values[Random().nextInt(6)];
  ;
  switch (generoFavorito) {
    case GenerosMusicais.trap:
      print('Meu genero musical preferido e o trap');
      break;
    case GenerosMusicais.pagode:
      print('Meu genero musical preferido e o pagode');
      break;
    case GenerosMusicais.samba:
      print('Meu genero musical preferido e o samba');
      break;
    case GenerosMusicais.rock:
      print('Meu genero musical preferido e o rock');
      break;
    case GenerosMusicais.pop:
      print('Meu genero musical preferido e o pop');
      break;
    case GenerosMusicais.rap:
      print('Meu genero musical preferido e o rap');
      break;
  }
}
