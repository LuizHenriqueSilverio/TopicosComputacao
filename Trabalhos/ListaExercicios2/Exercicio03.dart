class Cliente {
  String nome;
  int codigo;

  Cliente(this.nome, this.codigo);

  void apresentarDados() {
    print("Nome: $nome | Código: $codigo");
  }
}

void main() {
  Cliente cliente1 = Cliente("Maria Silva", 101);
  Cliente cliente2 = Cliente("João Souza", 102);

  cliente1.apresentarDados();
  cliente2.apresentarDados();
}
