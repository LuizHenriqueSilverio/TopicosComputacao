// Uma Stream é uma sequência de eventos assíncronos.
// Podemos ouvir esses eventos usando 'await for' dentro de uma função async.
// Cada evento emitido pela Stream pode ser processado conforme chega.
// O Stream.periodic é um construtor muito útil para criar uma Stream que emite um evento em intervalos regulares.

// Função que retorna uma Stream de números inteiros.
// A Stream emitirá um valor a cada segundo.
Stream<int> iniciarContador(int maximo) {
  // Stream.periodic cria uma stream que emite eventos em um intervalo.
  // O segundo argumento é uma função que define o valor a ser emitido.
  // Usamos .take() para garantir que a Stream feche após 5 emissões.
  return Stream.periodic(Duration(seconds: 1), (numero) {
    return numero + 1; // Começa a contar de 1
  }).take(maximo);
}

// Função principal para executar o nosso exemplo.
void main() async {
  print("Iniciando a contagem com Stream...");

  // Criamos a stream chamando a função.
  Stream<int> contador = iniciarContador(5);

  // 'await for' escuta a stream e executa o bloco de código
  // para cada valor emitido, até a stream ser fechada.
  await for (var numero in contador) {
    print("Número recebido da Stream: $numero");
  }

  print("Stream finalizada. Contagem concluída!");
}
