import 'dart:io';

class Pessoa {
  int? carteira;
  var multas =[];

  apresentar(){
    print('#######################');
    print('carteira: ${this.carteira}');
    print('multas: ');
    var qnt_multas=0;
    var total =0.0;
    for (var i = 0; i < multas.length; i++) {
      print("${i+1}multa, valor = ${multas[i]}");
      total+= multas[i];
      qnt_multas =i+1;
    }
    print('${qnt_multas} multas, totalizando ${total}');
  }
}

totalRecursos(List pessoas){
  var total = 0.0;
  for (var elem in pessoas) {
    for (var valor in elem.multas) {
      total += valor;
    }
  }
  print('total de recursos = ${total}');
}

maiorNumeroDeMultas(List pessoas){
  var maior = 0;
  var pessoa_mais_multada;
  for (var elem in pessoas) {
    if (elem.multas.length > maior){
      maior = elem.multas.length;
      pessoa_mais_multada = elem;
    }
  }
  print('a pessoa que foi mais multada foi a que possui a carteira ${pessoa_mais_multada.carteira} com o total de ${pessoa_mais_multada.multas.length} multas');
}
void main(List<String> args) {
  var pessoas_multadas = [];

  while(true){
    var pessoa = Pessoa();
    print('digite o numero da sua carteira:');
    var numero_carteira = int.parse(stdin.readLineSync()!);
    if(numero_carteira < 1 || numero_carteira > 4327){
      break;
    }
    pessoa.carteira = numero_carteira;

    print('digite o numero de multas');
    var qnt_multas = int.parse(stdin.readLineSync()!);
    for (var i = 0; i < qnt_multas; i++) {
      print('digite o valor da ${i+1} multa');
      double temp_multa = double.parse(stdin.readLineSync()!);
      pessoa.multas.add(temp_multa);
    }
    pessoas_multadas.add(pessoa);
  }

  for (var elem in pessoas_multadas) {
    elem.apresentar();
  }
  totalRecursos(pessoas_multadas);
  maiorNumeroDeMultas(pessoas_multadas);
  


}