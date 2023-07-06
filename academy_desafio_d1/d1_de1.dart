//import 'dart:math';

void main() {
  List<num> raios = [5, 8, 12, 7.3, 18, 2, 25];
  for (int i = 0; i < 7; i++) {
    num area = raios[i] * raios[i] * 3.14;
    num perimetro = 2 * 3.14 * raios[i];
    print("Raio: ${raios[i]}, area: $area, perimetro: $perimetro.");
  }
}
