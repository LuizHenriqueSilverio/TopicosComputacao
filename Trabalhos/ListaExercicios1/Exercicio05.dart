import 'dart:io';

void main() {
  Map<int, double> paymentMethods = {0: 0.25, 1: 0.20, 2: 0.10, 3: 0.05};

  stdout.write("Digite o valor do produto: ");
  double productPrice = double.parse(stdin.readLineSync()!);

  print("Selecione a forma de pagamento: ");
  print("0 - À vista (25% de desconto)");
  print("1 - Cheque (20% de desconto)");
  print("2 - Cartão de crédito 2x (10% de desconto)");
  print("3 - Cartão de crédito 3x (5% de desconto)");
  print("Outro - Negociado com o vendedor (sem desconto)");

  int paymentCode = int.parse(stdin.readLineSync()!);

  double finalPrice = 0.0;

  if (paymentMethods.containsKey(paymentCode)) {
    double discount = paymentMethods[paymentCode]!;
    finalPrice = productPrice * (1 - discount);
  } else {
    finalPrice = productPrice;
  }

  print("O valor final do produto é: R\$ ${finalPrice.toStringAsFixed(2)}");
}
