import 'dart:io';

void main() {
  stdout.write("Digite um número real: ");
  double realNumber = double.parse(stdin.readLineSync()!);
  double fifthPart = realNumber / 5;
  print("Número: $realNumber");
  print("Quinta parte: $fifthPart");
}