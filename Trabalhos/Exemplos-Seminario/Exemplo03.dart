// Em aplicações reais, especialmente com interfaces gráficas, não queremos que a tela congele enquanto esperamos por dados.
// Usar async/await com Futures e Streams nos permite manter a interface responsiva.

// Função que simula a busca de um nome de usuário (Future).
Future<String> buscarNomeUsuario() async {
  await Future.delayed(Duration(seconds: 2));
  return "Maria";
}

// Função que simula um feed de notificações (Stream).
Stream<String> streamDeNotificacoes() {
  return Stream.periodic(Duration(seconds: 1), (i) {
    return 'Nova notificação ${i + 1}';
  }).take(4);
}

void main() async {
  print("Carregando tela do app...");

  // Disparamos a busca pelo nome de usuário.
  // O 'await' garante que a tela só será "montada" com o nome após ele chegar.
  String nome = await buscarNomeUsuario();
  print("--- Tela Carregada! Bem-vinda, $nome! ---\n");

  // Agora, começamos a ouvir as notificações.
  // Isso acontece DEPOIS que a tela principal foi carregada.
  print("Ouvindo o feed de notificações...");
  await for (var notificacao in streamDeNotificacoes()) {
    print("-> $notificacao");
  }

  print("\n--- Nenhuma notificação nova. ---");
}
