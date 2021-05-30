// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ControllerCalculadoraPadrao.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ControllerCalculadoraPadrao on _ControllerCalculadoraPadraoBase, Store {
  final _$valoresAtom = Atom(name: '_ControllerCalculadoraPadraoBase.valores');

  @override
  ObservableList<dynamic> get valores {
    _$valoresAtom.reportRead();
    return super.valores;
  }

  @override
  set valores(ObservableList<dynamic> value) {
    _$valoresAtom.reportWrite(value, super.valores, () {
      super.valores = value;
    });
  }

  final _$resultadoAtom =
      Atom(name: '_ControllerCalculadoraPadraoBase.resultado');

  @override
  dynamic get resultado {
    _$resultadoAtom.reportRead();
    return super.resultado;
  }

  @override
  set resultado(dynamic value) {
    _$resultadoAtom.reportWrite(value, super.resultado, () {
      super.resultado = value;
    });
  }

  final _$_ControllerCalculadoraPadraoBaseActionController =
      ActionController(name: '_ControllerCalculadoraPadraoBase');

  @override
  dynamic mostraResultado() {
    final _$actionInfo = _$_ControllerCalculadoraPadraoBaseActionController
        .startAction(name: '_ControllerCalculadoraPadraoBase.mostraResultado');
    try {
      return super.mostraResultado();
    } finally {
      _$_ControllerCalculadoraPadraoBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
valores: ${valores},
resultado: ${resultado}
    ''';
  }
}
