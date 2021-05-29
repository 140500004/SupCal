import 'package:mobx/mobx.dart';
part 'ControllerCalculadoraPadrao.g.dart';

class ControllerCalculadoraPadrao = _ControllerCalculadoraPadraoBase
    with _$ControllerCalculadoraPadrao;

abstract class _ControllerCalculadoraPadraoBase with Store {
  @observable
  var valores = ObservableList<String> = [];
  @observable
  var resultado = 0;

  @action
  mostraResultado() {
    resultado = fazerCalculor();
  }

/*
  @computed
  String get autoCalcular () {
    resultado = fazerCalculor();
  }
  */

  fazerCalculor() {
    return 0;
  }
}
