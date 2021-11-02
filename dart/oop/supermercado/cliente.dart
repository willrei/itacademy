import 'dart:math';

class Cliente {
  final int _id;
  final int _compra = Random().nextInt(4990) + 10;

  Cliente(this._id) {
    print('cliente $_id entrou com R\$ $_compra');
  }

  int get id => _id;
  int get compra => _compra;
}
