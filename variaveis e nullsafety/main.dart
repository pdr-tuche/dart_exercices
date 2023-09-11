void main(List<String> args) {
  String variavelNome = "isso e uma string";
  int valorInteiro = 10;
  bool verdadeiro = true;
  List<String> listaDePalavras = ['@pdr-tuche', "@pdr0nvs"];

  print((listaDePalavras));
  
  String ?nome; //? é a definicao q o nome pode receber null
  nome = "fulano";
  print(nome!); //o ! no final serve p garantir que avariavel nao esta indo nmull
  nome = null;

  late String sobrenome; // depois que a variavel receber um valor, ela nao podera receber outro valor null
  sobrenome = "de tal";
  print(sobrenome);
  sobrenome = null; // nao deixa usar null
}