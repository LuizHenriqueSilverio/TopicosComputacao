// Para trabalhar com Futures de forma limpa e legível, usamos as palavras-chave async e await.
// async: Marca uma função como assíncrona, permitindo o uso do await dentro dela. Ela sempre retorna um Future.
// await: Pausa a execução da função async até que o Future seja concluído. Enquanto espera, o programa não fica bloqueado e pode executar outras tarefas.

// Função que simula a busca de dados em um servidor.
// Ela é 'async' e retorna um Future<String>.
Future<String> buscarDadosDaAPI() async {
  print("Iniciando a chamada à API...");

  // Usamos Future.delayed para simular a latência da rede (2 segundos).
  // 'await' pausa a execução aqui até o Future ser concluído.
  await Future.delayed(Duration(seconds: 2));

  print("Chamada à API finalizada!");

  // Este é o valor que o Future irá 'resolver'.
  return "Dados recebidos do servidor com sucesso!";
}

void main() async {
  print("O programa começou.");

  // Chamamos a função e esperamos pelo resultado com 'await'.
  String dados = await buscarDadosDaAPI();

  // Esta linha só será executada após o Future ser completado.
  print("Resultado: $dados");

  print("O programa terminou.");
}
