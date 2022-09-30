import './viagem.dart';
import 'transporte.dart';

class Exemplos {

  Transporte locomocao;

  Exemplos(this.locomocao);

  /// Iterable é uma coleção de valores ou elementos que podem ser acessados
  /// sequencialmente. Vimos que essa classe é abstrata, ou seja, não podemos
  /// instanciar objetos do tipo Iterable, mas essa classe é usada como base
  /// para as outras estruturas de coleção: List e Sets.
  iterableComoArgumento() {
    List<int> numeros = [1, 2, 3];
    print(numeros); // [1,2,3]

    numeros.addAll([4, 5, 6]);
    print(numeros); // [1,2,3,4,5,6]
  }

  iterableComoRetorno() {
    List<int> numeros = [1, 2, 3, 3, 2, 1];
    var subLista = numeros.getRange(1, 4);
    print(subLista); // (2,3,3)
    print(subLista.runtimeType); //SubListIterable<int>

    List<int> listaSubLista = subLista.toList();
    print(listaSubLista); //[2, 3, 3]
    print(listaSubLista.runtimeType); //List<int>
  }

  /// Sets são coleções que herdam de Iterable, assim como as Lists e, para fins
  /// práticos, podem ser considerados um caso especial de List onde todas as
  /// entradas são únicas, ou seja, não contêm entradas repetidas.
  /// Essa estrutura é útil quando queremos armazenar valores únicos em uma
  /// única variável sem considerar a ordem das entradas.
  usandoSet() {
    Set<String> registrosVisitados = <String>{};
    registrosVisitados = registrarDestinos('São Paulo', registrosVisitados);
    registrosVisitados = registrarDestinos('Rio', registrosVisitados);
    registrosVisitados = registrarDestinos('Berlandia', registrosVisitados);
    registrosVisitados = registrarDestinos('São Paulo', registrosVisitados);
    print(registrosVisitados);
  }

  registrarDestinos(String destino, Set<String> banco) {
    banco.add(destino);
    return banco;
  }

  /// Maps, um tipo de coleção extremamente útil na em aplicações reais como
  /// quando acessamos bancos de dados e trocamos informações com APIs.
  /// Nessa estrutura, sempre teremos um par contendo uma chave e um valor,
  /// onde essa chave dá acesso à leitura e modificação desse valor.
  /// É por esse motivo que, em algumas linguagens, ela recebe o nome de
  /// “Dicionário”.
  usandoMap() {
    //<tipo da chave, tipo do valor>
    Map<String, dynamic> registrarPrecos = {};
    registrarPrecos['São Paulo'] = 1200;
    registrarPrecos['Rio'] = 1300;
    registrarPrecos['Berlandia'] = 1400;
    registrarPrecos['Beraba'] = 'Caro';
    registrarPrecos.remove('Rio');

    print(registrarPrecos);
    print(registrarPrecos['São Paulo']);
  }

  exemplos() {
    List<String> destinos = [
      'Jalapão',
      'Chapada dos Veadeiros',
      'João Pessoa',
      'Chapada dos Veadeiros'
    ];
    print(destinos);

    Set destinosVisitados = <String>{
      'Rio de Janeiro',
      'Chapada dos Veadeiros',
      'São Paulo',
      'Chapada dos Veadeiros',
    };
    print(destinosVisitados);

    Set destinosDesejados = <String>{
      'Jalapão',
      'Califórnia',
      'Gramado',
      'Chapada Diamantina',
      'São Paulo'
    };
    print(destinosDesejados.intersection(destinosVisitados));

    Map<String, String> motivoMap = {
      'Jalapão': 'Natureza',
      'Califórnia': 'Arte',
      'Gramado': 'Chocolate',
      'Chapada Diamantina': 'Cachoeiras',
      'São Paulo': 'Compras',
    };

    print(motivoMap);

    Map<String, dynamic> precoMap = {
      'Jalapão': 2380.00,
      'Califórnia': 'MUITO CARO',
      'Gramado': 1200,
      'Chapada Diamantina': 600,
      'São Paulo': 'Barato',
    };
    print(precoMap);
  }

  /// Aula 3 - Usando dynamic
  usandoDynamic() {
    double numero1 = 7.1;
    var numero2 =
        100; //var tipa a variavel automáticamente, mas não pode mudar o conteudo para outro tipo

    print(numero1.runtimeType);
    print(numero2.runtimeType);

    dynamic numero3 = 100; //aceita mudar o tipo após a inicialização
    print(numero3.runtimeType);
    numero3 = '100';
    print(numero3.runtimeType);
  }

  /// Usando Static
  /// Serve para criar atributos da classe sem que seja necessário a instância do mesmo.
  usandoStatic() {
    Viagem viagem = Viagem(0, locomocao: Transporte.carro);
    viagem.preco;
    print(viagem.getCodigo());
  }
}
