/* Willian Reichert - 02/11/2021
 * Supermercado */

import 'supermercado.dart';

void main() {
  var supermercado = Supermercado(2); // instancia com dois caixas
  for (var i = 0; i < 12; i++) supermercado.receber(); // recebe 10 clientes

  supermercado.atender(); // executa uma rodada de atendimentos nos caixas

  print('faturamento -> R\$ ${supermercado.faturamento}');
  print('perdas -> R\$ ${supermercado.perdas}');
}
