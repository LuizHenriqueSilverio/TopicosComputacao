import 'dart:io';

void main() {
  stdout.write("Digite um número inteiro: ");
  int wholeNumber = int.parse(stdin.readLineSync()!);
  print("Número Inteiro: $wholeNumber");

  stdout.write("Digite um número real: ");
  double realNumber = double.parse(stdin.readLineSync()!);
  print("Número real: $realNumber");
}