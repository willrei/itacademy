import 'dart:io';
import 'dart:math';
import 'dart:convert';

const IDADEMIN = 15;
const IDADEMAX = 100;
const SALARIOMAX = 15000;

void main(List<String> args) {
  // apenas são aceitas chamadas com exatamente um argumento
  if (args.length != 1) {
    print('Utilize: dart run ./gerador_dados.dart <[1, 100]>');
    return;
  }

  // apenas são aceitas chamadas com um inteiro como argumento
  if (int.tryParse(args[0]) == null) {
    print('Utilize: dart run ./gerador_dados.dart <[1, 100]>');
    return;
  }

  // apenas são aceitas chamadas com um inteiro entre 1 e 100, inclusive
  final int quant = int.parse(args[0]);
  if (quant < 1 || quant > 100) {
    print('Utilize: dart run ./gerador_dados.dart <[1, 100]>');
    return;
  }

  // geração de dados aleatórios com base no arquivo de nomes
  final arqNomes = File('nomes.txt');
  var nomes = arqNomes.readAsLinesSync();
  var dados = [];
  for (var i = 0; i < quant; i++) {
    var pessoa = {};
    pessoa['nome'] = nomes.removeAt(Random().nextInt(nomes.length));
    pessoa['sexo'] = Random().nextBool() ? 'M' : 'F';
    pessoa['idade'] = Random().nextInt(IDADEMAX + 1 - IDADEMIN) + IDADEMIN;
    pessoa['salario'] = Random().nextInt(SALARIOMAX).toDouble();
    dados.add(pessoa);
  }

  // escrita do arquivo json com os maps (cada cadastro)
  final arqDados = File('dados.json');
  arqDados.writeAsStringSync(JsonEncoder.withIndent('  ').convert(dados));
}
