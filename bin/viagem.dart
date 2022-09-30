import 'transporte.dart';

class Viagem {
  static String codigoLocal = '123';
  double? preco;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPrecos = {};

  int _totalLocalVisitado = 0;

  Viagem(this.preco, {required this.locomocao});

  getCodigo() {
    return codigoLocal;
  }

  void escolherMeioTransporte(Transporte locomocao) {
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

  void visitar(String destino) {
    registrosVisitados.add(destino);
    _totalLocalVisitado += 1;
  }

  void registrarPrecoVisita(String local, dynamic valor) {
    registrarPrecos[local] = valor;
  }

  int get consultarTotalLocaisVisitados {
    return _totalLocalVisitado;
  }

  void set alterarLocaisVisitados(int novaQnt) {
    if (novaQnt < 10) {
      _totalLocalVisitado = novaQnt;
    } else {
      print('não é possível');
    }
  }
}
