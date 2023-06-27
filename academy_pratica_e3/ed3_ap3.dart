import 'dart:math';

void main() {
  List<int> raios = [];
  for (int i = 0; i < 10; i++) {
    raios.add(Random().nextInt(100));
  }
  for(int i=0; i<10;i++){
    double a = calcularArea(raios[i]);
    double p = calcularPerimetro(raios[i]);
    print("Raio: ${raios[i]}, area: $a, perimetro: $p\n");
  }
}
  
  double calcularArea(int raio){
    double area = 3.14 * (raio * raio);
    return area;
  }
  
  double calcularPerimetro(int raio){
    double perimetro = 2 * 3.14 * raio;
    return perimetro;
  }