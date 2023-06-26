import 'dart:math';

void main() {
  int result1 = funcaoA1(funcaoB);
  int result2 = funcaoA2(funcaoC);
  print(result1);
  print(result2);
}

int funcaoA1(funcaoB) {
  int execucao1 = funcaoB(Random().nextInt(100));
  int execucao2 = funcaoB(Random().nextInt(100));
  return execucao1 + execucao2;
}

int funcaoA2(funcaoC) {
  int execucao1 = funcaoC(Random().nextInt(100));
  int execucao2 = funcaoC(Random().nextInt(100));
  return execucao1 + execucao2;
}

int funcaoB(int n) {
  int mult = n * n;
  return mult;
}

int funcaoC(int n) {
  int mult = n * n;
  return mult;
}
