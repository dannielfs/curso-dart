import 'package:curso01/curso01.dart' as curso01;
import 'dart:io';

void main(List<String> arguments) {
  //Trabalhando com listas
  List<String> list = ['Danniel','Faria','Sousa','37','anos'];

  //sublist - faz um recorte da lista que ja tem, do indice especificado, o start é inclusivo, o end é exclusivo
  printElement('Exemplo: Sublist');
  List<String> sublist = list.sublist(1, 3);

  print(sublist);

  //foreach - elemento por elemento
  printElement('Exemplo: Foreach');

  list.forEach((element) {
    print(element);
  });

  //contains
  printElement('Exemplo: contains');

  String procurando = 'Danniel';
  if (list.contains(procurando)) {
    print('achou');
  } else {
    print('não achou');
  }
  
  //reduce
  printElement('Exemplo: reduce');
  //list.reduce((value, element) => null)
  //value = valor final (o que vai ser retornado ao final
  //elemento = é o elemento atual
  String myName = list.reduce((value, element) {
    return value + ' ' + element;
  });
  print(myName);

  //where
  printElement('Exemplo: where');
  Iterable maior = list.where((element) => element.length > 3);
  List<String> maiorLista = list.where((element) => element.length > 3).toList();
  String maiorString = list.firstWhere((element) => element.length > 3);
  print(maior);
  print(maiorLista);
  print(maiorString);

  //imput de dados pelo teclado
  print('Qual a sua idade?');
  String? input = stdin.readLineSync();
  if (input != null) {
    int? idade = int.parse(input);
    print('Sua idade $input.');
    print('Sua idade ano que vem sera ${idade + 1}');
  }
}

void printElement(el) {
  print('-----');
  print('');
  print(el);
  print('');
}
