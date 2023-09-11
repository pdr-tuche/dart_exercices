
void main(List<String> args) {
  Carro gol = Carro('GOL BOLINHA', "carrinho de cria", 18000);
  Carro mercedes = Carro("MERCEDAO", "muito dinheros", 400000);
  mercedes.valor = 2;
  print(mercedes._valor);
  print(mercedes._segredo);
}

class Carro{
  final String marca;
  String _segredo = "muito dinheiros";
  int _valor = 1000;

  int get valor => _valor;
  void set valor(int value) => _valor = value;

  Carro(this.marca, this._segredo, this._valor);
}