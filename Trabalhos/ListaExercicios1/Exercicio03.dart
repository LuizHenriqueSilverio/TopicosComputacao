import 'dart:io';

void main() {
  stdout.write("Insira o salário do funcionário: ");
  double salary = double.parse(stdin.readLineSync()!);
  double raise = salary * 1.15;
  print("O salário do funcionário com 15% de aumento é : R\$${raise.toStringAsFixed(2)}");
}