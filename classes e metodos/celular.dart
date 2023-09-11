class Celular{
  final String cor;
  final int qntProcessadores;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.qntProcessadores, this.tamanho, this.peso);

  String toString(){
    return "Cor: ${this.cor}\nQuantidade de processadores: ${this.qntProcessadores}\nTamanho: ${this.tamanho}cm\nPeso: ${this.peso}KG";
  }

  double valorDoCel(double valor){
    return valor * this.qntProcessadores;
  }
}

void main(List<String> args) {
  Celular meucel = Celular('branco', 2, 15, 0.300);
  Celular celDuda = Celular('roseta', 4, 13, 0.300);

  print(meucel);
  var res = meucel.valorDoCel(4);
  print('valor de cada core: R\$ ${res}');

}