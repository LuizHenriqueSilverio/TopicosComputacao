import 'dart:io';

void main() {

  Map<String, double> food = {
    "coxinha": 4.50,
    "joelho": 5.50,
    "pizza": 6.00
  };

  Map<String, double> drinks = {
    "agua": 3.00,
    "refrigerante": 4.50,
    "suco": 5.50
  };

  double total = 0.0;

  stdout.write("Digite o tipo de salgado desejado(coxinha/joelho/pizza): ");
  String foodChoice = stdin.readLineSync()!.toLowerCase();

  stdout.write("Digite a quantidade: ");
  int qtyFood = int.parse(stdin.readLineSync()!);

  if (food.containsKey(foodChoice)) {
    total += food[foodChoice]! * qtyFood;
  } else {
    print("Salgado inválido!");
    return;
  }

  stdout.write("Digite o tipo de bebida(agua/refrigerante/suco): ");
  String drinkChoice = stdin.readLineSync()!.toLowerCase();

  stdout.write("Digite a quantidade: ");
  int qtyDrinks = int.parse(stdin.readLineSync()!);

  if (drinks.containsKey(drinkChoice)) {
    total += drinks[drinkChoice]! * qtyDrinks;
  } else {
    print("Bebida inválida!");
    return;
  }

  if (total > 100) {
    total = total * 0.9;
    print("Desconto de 10% aplicado!");
  }

  print("Valor total do pedido: $total");

}