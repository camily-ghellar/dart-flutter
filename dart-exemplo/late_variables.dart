//double valor; erro, pois declaração de variável fora de classe não é entendida

late double valor; //modificador late é entendido;

void main() {
  valor = 10.5;

  print(valor);
}
/* late também é utilizado em função em que a viariável que a chama não está sendo usada
exemplo:
void main(){
  double result = _getValor(); -> adiciona-se late -> late double result = _getValor();
  print('função main');
}
double getValor(){
  print('função getValor);
  return 0.0;
} */