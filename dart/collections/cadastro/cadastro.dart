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
  if (dados.every((dado) => dado['sexo'] == 'M')) print('Apenas homens.');
  if (dados.every((dado) => dado['sexo'] == 'F')) print('Apenas mulheres.');
  if (dados.any((dado) => dado['sexo'] == 'M')) print('Há homens.');
  if (dados.any((dado) => dado['sexo'] == 'F')) print('Há mulheres.');
  print('');

  sep('Salários');
  var dado = dados.reduce(
      (atual, prox) => atual['salario'] > prox['salario'] ? atual : prox);
  print('O maior salário é de ${dado['nome']}, ${dado['sexo']}, com R\$ '
      '${dado['salario']}\n');

  sep('Salários médios');
  double mediaM = 0;
  double mediaF = 0;
  if (dados.any((dado) => dado['sexo'] == 'M'))
    mediaM = dados.reduce((atual, prox) => atual['salario'] + prox['salario']) /
        dados.length;
  if (dados.any((dado) => dado['sexo'] == 'F'))
    mediaF = dados.reduce((atual, prox) => atual['salario'] + prox['salario']) /
        dados.length;
  print('Salário médio dos homens: R\$ $mediaM');
  print('Salário médio das mulheres: R\$ $mediaF\n');

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
