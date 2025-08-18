fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

void main() {
  print("Sequência de Fibonacci - Limite 15:");
  for (int i = 1; i <= 15; i++) {
    print(fibonacci(i));
  }
}
