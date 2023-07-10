//import 'package:intl/intl.dart';

void main() {
  var dataAtual = DateTime.now();
  int diasSomar = 18;
  var dataFinal = dataAtual;
  int diasUteis = 0;

  while (diasUteis < diasSomar) {
    dataFinal = dataFinal.add(Duration(days: 1));

    if (dataFinal.weekday >= DateTime.monday &&
        dataFinal.weekday <= DateTime.friday) {
      diasUteis++;
    }
  }

  print("Data atual: $dataAtual");
  print("Data calculada: $dataFinal");
}
