import 'package:flutter/material.dart';
import 'package:money2/money2.dart';

class CardInfo extends StatefulWidget {
  final int index;
  final double value;
  final String primeiroTexto;
  final String segundoTexto;

  const CardInfo(
      {Key key, this.index, this.value, this.primeiroTexto, this.segundoTexto})
      : super(key: key);
  @override
  _CardInfoState createState() => _CardInfoState();
}

class _CardInfoState extends State<CardInfo> {
  Currency brl = Currency.create('BRL', 2,
      symbol: 'R\$ ', invertSeparators: true, pattern: "S.###,00");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
            border: BorderDirectional(
                bottom: BorderSide(width: 1, color: Colors.black26))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "${widget.primeiroTexto}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            widget.value == null
                ? Text("${widget.segundoTexto}")
                : Text(
                    "${Money.from(double.parse(widget.value.toStringAsFixed(2)), brl)}",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
