/* Willian Reichert - 04/11/2021
 * CEP */

import 'dart:convert';
import 'dart:io';

void main() async {
  // leitura e validação do cep
  stdout.write('\nEntre um CEP (8 dígitos, apenas): ');
  final cep = stdin.readLineSync();
  if (!(cep!.contains(RegExp(r'^[0-9]{8}$')))) {
    print('\nEntrada inválida!\n');
    return;
  }

  // envio da requisição
  final url = Uri.parse('http://viacep.com.br/ws/$cep/json/');
  var cliente = HttpClient();
  var requisicao = await cliente.getUrl(url);

  // recebimento da resposta
  var resposta = await requisicao.close();
  cliente.close();

  // conversão da resposta de json para map
  var dadosJson = (await utf8.decoder.bind(resposta).toList())[0];
  Map<String, dynamic> dados = JsonDecoder().convert(dadosJson);

  // checagem de cep inexistente
  if (dados.containsKey('erro')) {
    print('\nCEP não encontrado!\n');
    return;
  }

  // impressão formatada dos dados
  print('\nCEP: ${dados['cep']}');
  print('Logradouro: ${dados['logradouro']}');
  print('Complemento: ${dados['complemento']}');
  print('Bairro: ${dados['bairro']}');
  print('Localidade: ${dados['localidade']}');
  print('UF: ${dados['uf']}');
  print('IBGE: ${dados['ibge']}');
  print('GIA: ${dados['gia']}');
  print('DDD: ${dados['ddd']}');
  print('SIAFI: ${dados['siafi']}\n');
}
