import 'package:cached_network_image/cached_network_image.dart';
import 'package:devendum_clone/calc_store.dart';
import 'package:devendum_clone/two_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class OneRoute extends StatefulWidget {
  @override
  _OneRouteState createState() => _OneRouteState();
}

class _OneRouteState extends State<OneRoute> {
  CalcStore calcStore = CalcStore();
  var valorAFinanciarController = new MoneyMaskedTextController(
      leftSymbol: 'R\$ ', decimalSeparator: ',', thousandSeparator: '.');
  var jurosController = new MoneyMaskedTextController(
      rightSymbol: '% a.m. ', decimalSeparator: ',', thousandSeparator: '.');

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
            child: CachedNetworkImage(
            placeholder: (context, url) => new CircularProgressIndicator(),
            imageUrl: "https://image.flaticon.com/icons/png/512/124/124065.png",
            errorWidget: (context, url, error) => new Icon(Icons.error),
            height: 200,
            width: 200,

          ),
            //  Image.network(
            //   "https://image.flaticon.com/icons/png/512/124/124065.png",
            //   alignment: Alignment.center,
            //   width: 200,
            //   height: 200,
            // ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 5),
            child: TextField(
              controller: valorAFinanciarController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Valor a financiar"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: TextField(
              controller: jurosController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Taxa de juros ao mês"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30, bottom: 10),
            child: TextField(
              keyboardType: TextInputType.number,
              maxLength: 3,
              onChanged: calcStore.setPrazo,
              decoration: InputDecoration(labelText: "Prazo (Mês)"),
            ),
          ),
          Observer(builder: (_) {
            return RaisedButton.icon(
              onPressed: calcStore.prazo == null
                  ? null
                  : () {
                      calcStore.setValorParaFinanciar(
                          valorAFinanciarController.numberValue.toString());
                      calcStore
                          .setTaxaJuros(jurosController.numberValue.toString());
                      calcStore.gerarTabela();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
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
            );
          }),
        ],
      )),
    );
  }
}
