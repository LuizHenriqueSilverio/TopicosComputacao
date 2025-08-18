import 'dart:io';

double calc(double x, double y, double z) {
  return (x * x) + y + z;
}

void main() {
  double x, y, z;

  stdout.write("Digite o valor de x: ");
  x = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  stdout.write("Digite o valor de y: ");
  y = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;
  stdout.write("Digite o valor de z: ");
  z = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  double result = calc(x, y, z);
  print("O resultado da expressão (x * x) + y + z é: $result");
}
