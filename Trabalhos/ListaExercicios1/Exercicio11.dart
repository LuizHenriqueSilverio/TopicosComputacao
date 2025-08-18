import 'dart:io';

void main() {
  List<int> numbers = [];

  print("Digite 5 números:");

  for (int i = 0; i < 5; i++) {
    stdout.write("Número ${i + 1}: ");
    int? number = int.tryParse(stdin.readLineSync() ?? '');

    if (number == null) {
      print("Entrada inválida. Por favor, digite um número inteiro.");
      i--;
      continue;
    }

    numbers.add(number);
  }

  print("Ordem inversa dos números:");

  for (int i = numbers.length - 1; i >= 0; i--) {
    print(numbers[i]);
  }
}
