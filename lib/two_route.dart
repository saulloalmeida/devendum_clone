import 'package:devendum_clone/CustomListView.dart';
import 'package:devendum_clone/calc_store.dart';
import 'package:devendum_clone/card.dart';
import 'package:flutter/material.dart';
import 'package:money2/money2.dart';

class TwoRoute extends StatefulWidget {
  final CalcStore calc;
  TwoRoute([this.calc]);

  @override
  _TwoRouteState createState() => _TwoRouteState();
}

class _TwoRouteState extends State<TwoRoute> {
  Currency brl = Currency.create('BRL', 2,
      symbol: 'R\$ ', invertSeparators: true, pattern: "S.###,00");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
            child: Card(
              color: Colors.indigo[300],
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "Resultado - Resumo",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CardInfo(
                    primeiroTexto: "Valor a Financiar:",
                    value: widget.calc.valorParaFinanciar,
                  ),
                  CardInfo(
                    primeiroTexto: "Total de Juros:",
                    value: widget.calc.totalJuros(),
                  ),
                  CardInfo(
                    primeiroTexto: "Valor da Parcela:",
                    value: widget.calc.valorParcela,
                  ),
                  CardInfo(
                    primeiroTexto: "Taxa de Juros:",
                    segundoTexto: "${widget.calc.taxaJuros*100} % a.m.",
                  ),
                  CardInfo(
                    primeiroTexto: "Prazo:",
                    segundoTexto: "${widget.calc.prazo.toInt()} Meses",
                  ),
                  CardInfo(
                    primeiroTexto: "Forma de amortização:",
                    segundoTexto: "Price",
                  ),
                ],
              ),
            ),
          ),
          Text(
            "Detalhes - Mês a Mês",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Expanded(child: CustomListView(calc: widget.calc)),
          RaisedButton.icon(
            color: Colors.blueGrey[800],
            onPressed: () {
              Navigator.pushNamed(context, "/");
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            label: Text(
              "Voltar",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
