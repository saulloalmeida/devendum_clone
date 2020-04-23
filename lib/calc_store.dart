import 'package:mobx/mobx.dart';
import 'dart:math';
part 'calc_store.g.dart';

class CalcStore = _CalcStoreBase with _$CalcStore;

abstract class _CalcStoreBase with Store {
  @observable
  double valorParaFinanciar;
  @observable
  double taxaJuros;
  @observable
  double prazo;
  @observable
  List<double> jurosMes = List<double>();
  @observable
  List<double> amortizacao = List<double>();
  @observable
  List<double> saldoDevedor = List<double>();
  @observable
  double valorParcela; // ok

  @computed
  bool get ehValido =>
      valorParaFinanciar != null && prazo != null && taxaJuros != null;
      
  @action
  descobrirValorParcela() {
    double primeiraLinha = ((pow((1 + taxaJuros), prazo)) * taxaJuros);
    double segundaLinha = (pow(1 + taxaJuros, prazo)) - 1;
    valorParcela = double.parse(
        (valorParaFinanciar * (primeiraLinha / segundaLinha))
            .toStringAsFixed(2));
  }

  @action
  setValorParaFinanciar(String value) =>
      valorParaFinanciar = double.parse(value);
  @action
  setPrazo(String value) => prazo = double.tryParse(value);

  @action
  setTaxaJuros(String value) => taxaJuros = double.tryParse(value) / 100;

  @action
  double totalPagoPeriodo() {
    return valorParcela * prazo;
  }

  @action
  double totalJuros() {
    return jurosMes.reduce((i, j) => i + j);
  }

  @action
  gerarTabela() {
    descobrirValorParcela();
    saldoDevedor.add(valorParaFinanciar);
    for (var i = 0; i < prazo; i++) {
      jurosMes.add(saldoDevedor[i] * taxaJuros);
      amortizacao.add(valorParcela - jurosMes[i]);
      saldoDevedor.add(saldoDevedor[i] - amortizacao[i]);
    }
  }
}
