import 'package:test/expect.dart';

void main(List<String> arguments) {
  //Viajar jalapao = Viajar(locomocao: Transporte.carro);
  //jalapao.aventura();
  //jalapao.aventura2();

  Set<String> registrosVisitados = <String>{};
  registrosVisitados = registrarDestinos('São Paulo', registrosVisitados);
  registrosVisitados = registrarDestinos('Rio', registrosVisitados);
  registrosVisitados = registrarDestinos('Berlandia', registrosVisitados);
  registrosVisitados = registrarDestinos('São Paulo', registrosVisitados);
  print(registrosVisitados);


}

class Viajar {
  Transporte locomocao;

  Viajar({required this.locomocao});

  void aventura() {
    if (locomocao == 1) {
      print('Estou indo numa Aventura de Carro!');
    } else if (locomocao == 2) {
      print('Estou indo numa Aventura de Carro!');
    } else if (locomocao == 3) {
      print('Estou indo numa Aventura de Carro!');
    } else {
      print('Estou indo numa Aventura!');
    }
  }

  void aventura2() {
    switch (locomocao) {
      case Transporte.carro:
        print('Estou indo numa Aventura de Carro!');
        break;
      case Transporte.bicicleta:
        print('Estou indo numa Aventura de Bike!');
        break;
      case Transporte.onibus:
        print('Estou indo numa Aventura de Busão!');
        break;
      case Transporte.aviao:
        print('Estou indo numa Aventura de Avião!');
        break;
      case Transporte.andando:
        print('Estou indo numa Aventura a Pé!');
        break;
      case Transporte.helicoptero:
        print('Estou indo numa Aventura de Helicóptero!');
        break;
      case Transporte.patins:
        print('Estou indo numa Aventura de Patins!');
        break;
      case Transporte.skate:
        print('Estou indo numa Aventura de Skate!');
        break;
      default:
        {
          print('Estou indo numa Aventura!');
        }
    }
  }
}

enum Transporte {
  carro,
  bicicleta,
  onibus,
  aviao,
  andando,
  helicoptero,
  patins,
  skate,
}

registrarDestinos(String destino, Set<String> banco) {
  banco.add(destino);
  return banco;
}

iterableComoArgumento() {
  List<int> numeros = [1,2,3];
  print(numeros); // [1,2,3]

  numeros.addAll([4,5,6]);
  print(numeros); // [1,2,3,4,5,6]
}

iterableComoRetorno() {
  List<int> numeros = [1,2,3,3,2,1];
  var subLista = numeros.getRange(1,4);
  print(subLista); // (2,3,3)
  print(subLista.runtimeType); //SubListIterable<int>

  List<int> listaSubLista = subLista.toList();
  print(listaSubLista); //[2, 3, 3]
  print(listaSubLista.runtimeType); //List<int>
}