import 'dart:io';

factorial(int n) {
  if (n <= 1) {
    return 1;
  } else {
    return n * factorial(n - 1);
  }
}

void main() {
  stdout.write('Digite um número inteiro positivo: ');
  int? number = int.tryParse(stdin.readLineSync()!);

  if (number == null || number < 0) {
    print('Por favor, digite um número inteiro positivo válido.');
  } else {
    int result = factorial(number);
    print('O fatorial de $number é $result.');
  }
}
