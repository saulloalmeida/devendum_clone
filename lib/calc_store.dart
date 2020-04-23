import 'package:mobx/mobx.dart';
import 'dart:math';
part 'calc_store.g.dart';

class CalcStore = _CalcStoreBase with _$CalcStore;

abstract class _CalcStoreBase with Store {
  @observable
  double valorParaFinanciar = 30000.00;

  @action
  setValorParaFinanciar(String value) =>
      valorParaFinanciar = double.tryParse(value);

  @observable
  double taxaJuros = 0.015;

  @action
  setTaxaJuros(String value) => taxaJuros = double.tryParse(value) / 100;

  @observable
  double prazo = 12;

  @action
  setPrazo(String value) => prazo = double.tryParse(value);

  @observable
  List<double> jurosMes = List<double>();
  @observable
  List<double> amortizacao = List<double>();
  @observable
  List<double> saldoDevedor = List<double>();

  @observable
  double valorParcela; // ok
  
  @action
  descobrirValorParcela() {
    double primeiraLinha = ((pow((1 + taxaJuros), prazo)) * taxaJuros);
    double segundaLinha = (pow(1 + taxaJuros, prazo)) - 1;
    valorParcela = double.parse((valorParaFinanciar *(primeiraLinha/segundaLinha)).toStringAsFixed(2));
    print("Valor Parcela: $valorParcela");
  }
  @action
  double totalPagoPeriodo(){
    return valorParcela*prazo;
  }
  @action
  double totalJuros(){
    return jurosMes.reduce((i,j)=>i+j);
  }
  @action
  descobrirJurosMes(){
    jurosMes.add(valorParaFinanciar*taxaJuros);
    print("Juros Mes: $jurosMes");
  }
  @action
  descobrirAmortizacao(){
    amortizacao.add(valorParcela-jurosMes[0]);
    print("Valor Armotizado: $amortizacao");
  }
  @action
  descobrirSaldoDevedor(){
    if(amortizacao.length >=0){
      saldoDevedor.add(valorParaFinanciar-amortizacao[0]);
    }
    print("Saldo devedor:$saldoDevedor");
  }
  @action
  gerarTabela(){
    descobrirValorParcela();
    saldoDevedor.add(valorParaFinanciar);
    for (var i = 0; i < prazo; i++) {
      jurosMes.add(saldoDevedor[i]*taxaJuros);
      amortizacao.add(valorParcela-jurosMes[i]);
      saldoDevedor.add(saldoDevedor[i]-amortizacao[i]);
    }
    print("Juros Mes: $jurosMes");
    print("Amortizacao: $amortizacao");
    print("Saldo Devedor: $saldoDevedor");
  }
}
