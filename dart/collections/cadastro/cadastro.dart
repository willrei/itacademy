/* Willian Reichert - 02/11/2021
 * Cadastro */

import 'dart:convert';
import 'dart:io';

void main() {
  var arqDados = File('dados.json');
  var dados = List.from(json.decode(arqDados.readAsStringSync()));

  sep('Cadastro');
  listaCadastro(dados);

  sep('População');
  var pop = '';
  pop += dados.any((dado) => dado['sexo'] == 'M') ? '1' : '0';
  pop += dados.any((dado) => dado['sexo'] == 'F') ? '1' : '0';
  switch (pop) {
    case '10':
      print('Há apenas homens cadastrados\n');
      break;
    case '01':
      print('Há apenas mulheres cadastradas\n');
      break;
    case '11':
      print('Há homens e mulheres cadastrados\n');
  }

  sep('Salários');
  var dado = dados.reduce(
      (atual, prox) => atual['salario'] > prox['salario'] ? atual : prox);
  print('O maior salário é de ${dado['nome']}, ${dado['sexo']}, com R\$ '
      '${dado['salario']}\n');

  sep('Salários médios');
  double mediaM = 0;
  double mediaF = 0;
  var homens = dados.where((dado) => dado['sexo'] == 'M');
  var mulheres = dados.where((dado) => dado['sexo'] == 'F');

  if (homens.isNotEmpty) {
    double soma = 0;
    homens.forEach((homem) => soma += homem['salario']);
    mediaM = soma / homens.length;
    print('Salário médio dos homens: R\$ $mediaM');
  }
  if (mulheres.isNotEmpty) {
    double soma = 0;
    mulheres.forEach((mulher) => soma += mulher['salario']);
    mediaF = soma / mulheres.length;
    print('Salário médio das mulheres: R\$ $mediaF');
  }
  print('');

  sep('Cadastro após remoção dos outliers');
  dados.removeWhere((dado) => dado['sexo'] == 'M' && dado['salario'] > mediaM);
  dados.removeWhere((dado) => dado['sexo'] == 'F' && dado['salario'] < mediaF);
  listaCadastro(dados);
}

/* Imprime um separador. */
void sep(String titulo) => print('\n$titulo\n' + ('-' * 60) + '\n');

/* Imprime os dados do cadastro com formatação. */
void listaCadastro(List cadastro) {
  cadastro.forEach((dado) {
    print('Nome: ${dado['nome']}');
    print('Sexo: ${dado['sexo']}');
    print('Idade: ${dado['idade']}');
    print('Salário: ${dado['salario']}' '\n');
  });
}
