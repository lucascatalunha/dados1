import 'dart:io';

void main() {
  String? name;
  do {
    print('Escreva seu nome.');
    name = stdin.readLineSync();
  } while (name!.isEmpty);
  print('Seu nome é $name.');

  String? digitado;
  int weight = 0;
  bool back = true;
  do {
    print('Escreva seu peso.');
    digitado = stdin.readLineSync();
    int? temp = int.tryParse(digitado!);
    if (temp == null) {
      print('Digite um número por favor');
    } else {
      back = false;
      weight = temp;
    }
  } while (back);
  print('Seu peso é $weight.');

  double height = 0;
  back = true;
  do {
    print('Escreva sua altura.');
    digitado = stdin.readLineSync();
    double? temp = double.tryParse(digitado!);
    if (temp == null) {
      print('Digite um número por favor');
    } else {
      back = false;
      height = temp;
    }
  } while (back);
  print('Sua altura é $height.');
}
