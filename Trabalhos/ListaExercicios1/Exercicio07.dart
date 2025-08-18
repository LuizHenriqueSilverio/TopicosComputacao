import 'dart:io';

void main() {
  Map<int, double> raisePercentages = {101: 0.10, 102: 0.20, 103: 0.30};

  stdout.write("Digite o valor do salário atual: ");
  double currentSalary = double.parse(stdin.readLineSync()!);

  print("Selecione o código da função: ");
  print("101 - Gerente (10% de aumento)");
  print("102 - Engenheiro (20% de aumento)");
  print("103 - Técnico (30% de aumento)");
  print("Outro - Não especificado (40% de aumento)");

  stdout.write("Escolha: ");
  int functionCode = int.parse(stdin.readLineSync()!);

  double raisePercentage = raisePercentages.containsKey(functionCode)
      ? raisePercentages[functionCode]!
      : 0.40;

  double finalSalary = currentSalary * (1 + raisePercentage);

  print("O salário atual é: R\$ ${currentSalary.toStringAsFixed(2)}");
  print("O novo salário é: R\$ ${finalSalary.toStringAsFixed(2)}");
  print(
    "O aumento foi de: R\$ ${(finalSalary - currentSalary).toStringAsFixed(2)}",
  );
}
