import 'dart:io';

bool isPrime(int n) {
  if (n <= 1) return false;
  for (int i = 2; i <= n / 2; i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  stdout.write("Digite um número: ");
  int? number = int.tryParse(stdin.readLineSync() ?? '');

  if (number == null) {
    print("Entrada inválida. Por favor, digite um número inteiro.");
    return;
  }

  if (isPrime(number)) {
    print("$number é primo.");
  } else {
    print("$number não é primo.");
  }
}
