// ignore_for_file: unnecessary_this

class Employee {
  String _nomeEmpresa;
  String _nome;
  int _idade;
  String _cargo;

  Employee(this._nomeEmpresa, this._nome, this._idade, this._cargo);

  String get nomeEmpresa => this._nomeEmpresa;

  set nomeEmpresa(String value) => this._nomeEmpresa = value;

  get nome => this._nome;

  set nome(value) => this._nome = value;

  get idade => this._idade;

  set idade(value) => this._idade = value;

  get cargo => this._cargo;

  set cargo(value) => this._cargo = value;
}
