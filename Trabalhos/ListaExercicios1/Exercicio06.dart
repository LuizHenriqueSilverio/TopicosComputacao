import 'dart:io';

void main() {
  print("Digite o ano de fabricação do carro:");
  int year = int.parse(stdin.readLineSync()!);

  print("Digite o valor de tabela do carro (ex: 50000.00):");
  int price = int.parse(stdin.readLineSync()!);

  double fee;
  double tax;

  if (year < 2000) {
    fee = 0.01;
  } else {
    fee = 0.015;
  }

  tax = price * fee;

  print("Ano do veículo: $year");
  print("Valor de tabela: R\$ ${price.toStringAsFixed(2)}");
  print("Percentual da taxa: ${(fee * 100).toStringAsFixed(1)}%");
  print("Imposto a ser pago: R\$ ${tax.toStringAsFixed(2)}");
}
