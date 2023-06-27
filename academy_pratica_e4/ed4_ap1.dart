void main() {
  verificarAnoBissexto(2016);
  verificarAnoBissexto(1988);
  verificarAnoBissexto(2000);
  verificarAnoBissexto(2100);
  verificarAnoBissexto(2300);
  verificarAnoBissexto(1993);
}

void verificarAnoBissexto(int ano) {
  bool ehBissexto = ehAnoBissexto(ano);

  if (ehBissexto) {
    print("O ano $ano eh bissexto");
  } else {
    print("O ano $ano nao eh bissexto");
  }
}

bool ehAnoBissexto(int ano) {
  bool anoBissexto = false;
  if (ano % 400 == 0 || (ano % 4 == 0 && ano % 100 != 0)) {
    anoBissexto = true;
  }
  return anoBissexto;
}
