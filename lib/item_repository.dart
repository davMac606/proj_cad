// ignore_for_file: avoid_print, unnecessary_this

import 'package:proj_cad/item.dart';

class ItemRepository {
  List<Item> _itens = [];

  ItemRepository() {
    this._itens = [];
  }

  void add(Item it) {
    _itens.add(it);
  }

  void printItem() {
    for (var i = 0; i < _itens.length; i++) {
      print(_itens[i].nomeItem);
    }
  }
}
