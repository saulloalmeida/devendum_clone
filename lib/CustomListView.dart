import 'package:devendum_clone/calc_store.dart';
import 'package:devendum_clone/card.dart';
import 'package:flutter/material.dart';

class CustomListView extends StatefulWidget {
  final CalcStore calc;

  const CustomListView({Key key, this.calc}) : super(key: key);
  @override
  _CustomListViewState createState() => _CustomListViewState();
}

class _CustomListViewState extends State<CustomListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(20),
      itemCount: widget.calc.jurosMes.length,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 170,
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Card(
                  color: Colors.grey[300],
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Column(
                    children: <Widget>[
                      CardInfo(
                        primeiroTexto: "${index+1}ª Parcela:",
                        index: index,
                        value: widget.calc.valorParcela,
                      ),
                      CardInfo(
                        primeiroTexto: "Juros: ",
                        index: index,
                        value: widget.calc.jurosMes[index],
                      ),
                      CardInfo(
                        primeiroTexto: "Amortização: ",
                        index: index,
                        value: widget.calc.amortizacao[index],
                      ),
                      CardInfo(
                        primeiroTexto: "Saldo Devedor: ",
                        index: index,
                        value: widget.calc.saldoDevedor[index+1].abs(),
                      ),
                      // Image.network(
                      //   "https://i2.wp.com/www.institutoniemeyer.org/wp-content/uploads/2018/09/teste.png?w=400",
                      //   alignment: Alignment.center,
                      //   height: 100,
                      //   width: 100,
                      // ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
