import 'dart:collection';
import 'dart:math';
import 'cliente.dart';

class Caixa {
  static const int capacidade = 5;
  final int _id;
  bool _aberto = true;
  var _fila = Queue();

  Caixa(this._id);

  int get id => _id;
  int get lotacao => _fila.length;
  bool get aberto => _aberto;

  /* Abre o caixa. */
  void abrir() => _aberto = true;

  /* Fecha o caixa. */
  void fechar() => _aberto = false;

  /* Recebe um cliente. */
  void encaminhar(Cliente cliente) => _fila.addLast(cliente);

  /* Atende um cliente com 50% de chance de sucesso. */
  int atender() {
    if (_fila.isNotEmpty && Random().nextBool())
      return _fila.removeFirst().compra;
    else
      return 0;
  }
}
