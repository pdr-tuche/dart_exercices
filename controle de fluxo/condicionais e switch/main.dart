void main(List<String> args) {
  bool seguirEmFrente = true;

  if(seguirEmFrente){
    print('andando');
  }else{
    print('parado');
  }

  var valor = 5;
  switch(valor){
    case 0:
      print('zero');
      break;
    case 1:
      print('um');
      break;
    case 2:
      print('dois');
      break;
    default:
      print('default');
  }
}