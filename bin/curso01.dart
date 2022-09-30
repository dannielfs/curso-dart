
import 'transporte.dart';
import 'viagem.dart';

void main() {
  Viagem viagemMaio = Viagem(100, locomocao: Transporte.carro);
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.visitar('museu');
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.alterarLocaisVisitados = 9;
  print(viagemMaio.consultarTotalLocaisVisitados);
  viagemMaio.alterarLocaisVisitados = 20;
}


