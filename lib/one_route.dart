import 'package:devendum_clone/calc_store.dart';
import 'package:devendum_clone/two_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class OneRoute extends StatefulWidget {
  @override
  _OneRouteState createState() => _OneRouteState();
}

class _OneRouteState extends State<OneRoute> {
  CalcStore calcStore = CalcStore();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Center(
            child: Image.network(
              "https://image.flaticon.com/icons/png/512/124/124065.png",
              alignment: Alignment.center,
              width: 200,
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 5),
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: calcStore.setValorParaFinanciar,
              decoration: InputDecoration(labelText: "Valor a financiar"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: calcStore.setTaxaJuros,
              decoration: InputDecoration(labelText: "Taxa de juros ao mês"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: TextField(
              keyboardType: TextInputType.number,
              onChanged: calcStore.setPrazo,
              decoration: InputDecoration(labelText: "Prazo"),
            ),
          ),
          RaisedButton.icon(
            onPressed: () {
              calcStore.gerarTabela();
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TwoRoute(calcStore);
              }));
            },
            color: Colors.blueGrey[800],
            icon: Icon(
              AntDesign.calculator,
              color: Colors.white,
            ),
            label: Text(
              "Simular Financiamento",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      )),
    );
  }
}
