class Conta {
  int numero;
  double saldo;
  double limite;

  Conta(this.numero, this.saldo, this.limite);

  void deposita(double valor) {
    saldo += valor;
    print("Depósito de R\$${valor.toStringAsFixed(2)} realizado.");
  }

  void saca(double valor) {
    if (valor <= saldo + limite) {
      saldo -= valor;
      print("Saque de R\$${valor.toStringAsFixed(2)} realizado.");
    } else {
      print("Saldo insuficiente para saque de R\$${valor.toStringAsFixed(2)}!");
    }
  }

  void imprimeExtrato() {
    print(
      "Conta: $numero | Saldo: R\$${saldo.toStringAsFixed(2)} | Limite: R\$${limite.toStringAsFixed(2)}",
    );
  }
}

void main() {
  Conta conta1 = Conta(123, 500.0, 200.0);

  conta1.imprimeExtrato();
  conta1.deposita(150.0);
  conta1.saca(600.0);
  conta1.imprimeExtrato();
}
