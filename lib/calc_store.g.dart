// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calc_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CalcStore on _CalcStoreBase, Store {
  Computed<bool> _$ehValidoComputed;

  @override
  bool get ehValido =>
      (_$ehValidoComputed ??= Computed<bool>(() => super.ehValido)).value;

  final _$valorParaFinanciarAtom =
      Atom(name: '_CalcStoreBase.valorParaFinanciar');

  @override
  double get valorParaFinanciar {
    _$valorParaFinanciarAtom.context
        .enforceReadPolicy(_$valorParaFinanciarAtom);
    _$valorParaFinanciarAtom.reportObserved();
    return super.valorParaFinanciar;
  }

  @override
  set valorParaFinanciar(double value) {
    _$valorParaFinanciarAtom.context.conditionallyRunInAction(() {
      super.valorParaFinanciar = value;
      _$valorParaFinanciarAtom.reportChanged();
    }, _$valorParaFinanciarAtom, name: '${_$valorParaFinanciarAtom.name}_set');
  }

  final _$taxaJurosAtom = Atom(name: '_CalcStoreBase.taxaJuros');

  @override
  double get taxaJuros {
    _$taxaJurosAtom.context.enforceReadPolicy(_$taxaJurosAtom);
    _$taxaJurosAtom.reportObserved();
    return super.taxaJuros;
  }

  @override
  set taxaJuros(double value) {
    _$taxaJurosAtom.context.conditionallyRunInAction(() {
      super.taxaJuros = value;
      _$taxaJurosAtom.reportChanged();
    }, _$taxaJurosAtom, name: '${_$taxaJurosAtom.name}_set');
  }

  final _$prazoAtom = Atom(name: '_CalcStoreBase.prazo');

  @override
  double get prazo {
    _$prazoAtom.context.enforceReadPolicy(_$prazoAtom);
    _$prazoAtom.reportObserved();
    return super.prazo;
  }

  @override
  set prazo(double value) {
    _$prazoAtom.context.conditionallyRunInAction(() {
      super.prazo = value;
      _$prazoAtom.reportChanged();
    }, _$prazoAtom, name: '${_$prazoAtom.name}_set');
  }

  final _$jurosMesAtom = Atom(name: '_CalcStoreBase.jurosMes');

  @override
  List<double> get jurosMes {
    _$jurosMesAtom.context.enforceReadPolicy(_$jurosMesAtom);
    _$jurosMesAtom.reportObserved();
    return super.jurosMes;
  }

  @override
  set jurosMes(List<double> value) {
    _$jurosMesAtom.context.conditionallyRunInAction(() {
      super.jurosMes = value;
      _$jurosMesAtom.reportChanged();
    }, _$jurosMesAtom, name: '${_$jurosMesAtom.name}_set');
  }

  final _$amortizacaoAtom = Atom(name: '_CalcStoreBase.amortizacao');

  @override
  List<double> get amortizacao {
    _$amortizacaoAtom.context.enforceReadPolicy(_$amortizacaoAtom);
    _$amortizacaoAtom.reportObserved();
    return super.amortizacao;
  }

  @override
  set amortizacao(List<double> value) {
    _$amortizacaoAtom.context.conditionallyRunInAction(() {
      super.amortizacao = value;
      _$amortizacaoAtom.reportChanged();
    }, _$amortizacaoAtom, name: '${_$amortizacaoAtom.name}_set');
  }

  final _$saldoDevedorAtom = Atom(name: '_CalcStoreBase.saldoDevedor');

  @override
  List<double> get saldoDevedor {
    _$saldoDevedorAtom.context.enforceReadPolicy(_$saldoDevedorAtom);
    _$saldoDevedorAtom.reportObserved();
    return super.saldoDevedor;
  }

  @override
  set saldoDevedor(List<double> value) {
    _$saldoDevedorAtom.context.conditionallyRunInAction(() {
      super.saldoDevedor = value;
      _$saldoDevedorAtom.reportChanged();
    }, _$saldoDevedorAtom, name: '${_$saldoDevedorAtom.name}_set');
  }

  final _$valorParcelaAtom = Atom(name: '_CalcStoreBase.valorParcela');

  @override
  double get valorParcela {
    _$valorParcelaAtom.context.enforceReadPolicy(_$valorParcelaAtom);
    _$valorParcelaAtom.reportObserved();
    return super.valorParcela;
  }

  @override
  set valorParcela(double value) {
    _$valorParcelaAtom.context.conditionallyRunInAction(() {
      super.valorParcela = value;
      _$valorParcelaAtom.reportChanged();
    }, _$valorParcelaAtom, name: '${_$valorParcelaAtom.name}_set');
  }

  final _$_CalcStoreBaseActionController =
      ActionController(name: '_CalcStoreBase');

  @override
  dynamic descobrirValorParcela() {
    final _$actionInfo = _$_CalcStoreBaseActionController.startAction();
    try {
      return super.descobrirValorParcela();
    } finally {
      _$_CalcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setValorParaFinanciar(String value) {
    final _$actionInfo = _$_CalcStoreBaseActionController.startAction();
    try {
      return super.setValorParaFinanciar(value);
    } finally {
      _$_CalcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPrazo(String value) {
    final _$actionInfo = _$_CalcStoreBaseActionController.startAction();
    try {
      return super.setPrazo(value);
    } finally {
      _$_CalcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setTaxaJuros(String value) {
    final _$actionInfo = _$_CalcStoreBaseActionController.startAction();
    try {
      return super.setTaxaJuros(value);
    } finally {
      _$_CalcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  double totalPagoPeriodo() {
    final _$actionInfo = _$_CalcStoreBaseActionController.startAction();
    try {
      return super.totalPagoPeriodo();
    } finally {
      _$_CalcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  double totalJuros() {
    final _$actionInfo = _$_CalcStoreBaseActionController.startAction();
    try {
      return super.totalJuros();
    } finally {
      _$_CalcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic gerarTabela() {
    final _$actionInfo = _$_CalcStoreBaseActionController.startAction();
    try {
      return super.gerarTabela();
    } finally {
      _$_CalcStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'valorParaFinanciar: ${valorParaFinanciar.toString()},taxaJuros: ${taxaJuros.toString()},prazo: ${prazo.toString()},jurosMes: ${jurosMes.toString()},amortizacao: ${amortizacao.toString()},saldoDevedor: ${saldoDevedor.toString()},valorParcela: ${valorParcela.toString()},ehValido: ${ehValido.toString()}';
    return '{$string}';
  }
}
