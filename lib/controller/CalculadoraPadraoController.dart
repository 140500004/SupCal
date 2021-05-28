import 'package:mobx/mobx.dart';
part 'calculadorapadraocontroller.g.dart';

class CalculadoraPadraoController = _CalculadoraPadraoControllerBase
    with _$CalculadoraPadraoController;

abstract class _CalculadoraPadraoControllerBase with Store {
  @observable
  int primeiroValor = 0;
  @observable
  int operador = 0;
  @observable
  double segundoValor = 0;
  @observable
  int resultado = 0;

  @action
  operacao() {
    //resultado = primeiroValor + segundoValor;
  }
}
