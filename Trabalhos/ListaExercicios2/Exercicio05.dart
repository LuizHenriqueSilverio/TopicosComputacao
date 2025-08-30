class Banco {
  String nome;

  Banco(this.nome);
}

class Conta extends Banco {
  String tipo;
  int numero;
  String nomeCliente;
  double saldo;

  Conta(String nomeBanco, this.tipo, this.numero, this.nomeCliente, this.saldo)
    : super(nomeBanco);

  void dados() {
    print("Banco: $nome");
    print("Cliente: $nomeCliente");
    print("Tipo de conta: $tipo");
    print("Número da conta: $numero");
    print("Saldo: R\$ ${saldo.toStringAsFixed(2)}");
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
      print("Saque de R\$ ${valor.toStringAsFixed(2)} realizado.");
    } else {
      print("Saldo insuficiente!");
    }
  }

  void depositar(double valor) {
    saldo += valor;
    print("Depósito de R\$ ${valor.toStringAsFixed(2)} realizado.");
  }
}

void main() {
  Conta conta1 = Conta("Banco XYZ", "Corrente", 123456, "João Silva", 500.00);

  conta1.dados();

  conta1.depositar(250.00);
  conta1.sacar(100.00);

  conta1.dados();
}
