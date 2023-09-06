import 'dart:io';

double mediaIdadeExcelente(var qnt) => qnt/20;
double percentagem(var qnt) => (qnt * 20)/100;

main (){
    int idade=0;
    var idades;
    int media_idade_exelente =0;
    var qnt_pessoas_regular=0;
    var percentagem_bom=0;
    int opiniao;
    
    for(int i=0; i<20; i++){
        print('digite a sua idade');
        idade = int.parse(stdin.readLineSync()!);
        print('digite o que achou do filme:\nexcelente – 3; bom – 2; regular – 1.');
        opiniao = int.parse(stdin.readLineSync()!);
        if(opiniao == 3){
            media_idade_exelente+=idade;
        }else if (opiniao == 1){
            qnt_pessoas_regular +=1;
        }else if (opiniao ==2){
            percentagem_bom +=1;
        }

        if(Platform.isWindows) {
        print(Process.runSync("cls", [], runInShell: true).stdout); 
        } else {
        print(Process.runSync("clear", [], runInShell: true).stdout);
        }
    }

    print('a media das idades que respoderam excelente foi ${mediaIdadeExcelente(media_idade_exelente)}');
    print('a quantidade das pessoas que responderam regular foi: ${qnt_pessoas_regular}');
    print('a percentagem de pessoas que responderam bom foi de: ${percentagem(percentagem_bom)}');

}