import 'caixa.dart';
import 'cliente.dart';

class Supermercado {
  final int _numCaixas;
  int _numCliente = 0;
  var _caixas = <Caixa>[];
  int _faturamento = 0;
  int _perdas = 0;

  Supermercado(this._numCaixas) {
    for (var i = 0; i < _numCaixas; i++) _caixas.add(Caixa(i));
  }

  int get faturamento => _faturamento;
  int get perdas => _perdas;

  /* Recebe um cliente. */
  void receber() {
    var cliente = Cliente(_numCliente++);
    var minId = 0;
    var minLotacao = Caixa.capacidade;

    // procura pelo caixa com a menor lotação
    _caixas.forEach((caixa) {
      if (caixa.aberto && caixa.lotacao < minLotacao) {
        minId = caixa.id;
        minLotacao = caixa.lotacao;
      }
    });

    // encaminha o cliente caso haja um espaço livre
    if (minLotacao != Caixa.capacidade) {
      _caixas[minId].encaminhar(cliente);
      print('encaminhado para o caixa $minId -> ${minLotacao + 1} clientes');
    } else {
      print('cliente perdido por causa de filas cheias');
      _perdas += cliente.compra;
    }
  }

  /* Realiza uma rodada de atendimentos nos caixas. */
  void atender() {
    _caixas.forEach((caixa) => _faturamento += caixa.atender());
  }
}
