import 'dart:io';

void main() {

  Map<int, double> paymentMethods = {
    0: 0.25,
    1: 0.20,
    2: 0.10,
    3: 0.05
  }

  stdout.write("Digite o valor do produto: ");
  double productPrice = double.parse(stdin.readLineSync()!);
}