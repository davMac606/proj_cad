// ignore_for_file: unnecessary_this

class Item {
  String _nomeItem;
  double _preco;
  int _quantidade;

  Item(this._nomeItem, this._preco, this._quantidade);

  String get nomeItem => this._nomeItem;

  set nomeItem(String value) => this._nomeItem = value;

  get preco => this._preco;

  set preco(value) => this._preco = value;

  get quantidade => this._quantidade;

  set quantidade(value) => this._quantidade = value;
}
