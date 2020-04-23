import 'package:devendum_clone/CustomListView.dart';
import 'package:devendum_clone/calc_store.dart';
import 'package:flutter/material.dart';

class TwoRoute extends StatefulWidget {
  final CalcStore calc;
  TwoRoute([this.calc]);

  @override
  _TwoRouteState createState() => _TwoRouteState();
}

class _TwoRouteState extends State<TwoRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 20,
              right: 20,
            ),
            child: Card(
              color: Colors.indigo[300],
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    "Resultado",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Valor a Financiar: R\$ ${widget.calc.totalJuros().toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Valor da Parcela: R\$ ${widget.calc.totalPagoPeriodo().toStringAsFixed(2)}",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Valor da Parcela: R\$ ${widget.calc.valorParcela} em ${widget.calc.prazo.toInt()} meses.",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Forma de amortização: Price",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
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
