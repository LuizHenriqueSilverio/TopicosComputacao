import 'dart:io';

double calcDiffPercent(double x, double y) {
  if (x == 0 || y == 0) {
    return 0.0;
  }
  return ((y - x) / x) * 100;
}

void main() {
  double price1, price2;

  stdout.write("Digite o valor antigo do produto: ");
  price1 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  stdout.write("Digite o valor novo do produto: ");
  price2 = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  print(
    "A diferença percentual entre os preços é: ${calcDiffPercent(price1, price2)}%",
  );
}
