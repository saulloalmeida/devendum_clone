import 'package:flutter/material.dart';

class CardInfo extends StatefulWidget {
  final int index;
  final double value;
  final String primeiroTexto;
  final String segundoTexto;

  const CardInfo({Key key, this.index, this.value, this.primeiroTexto, this.segundoTexto}) : super(key: key);
  @override
  _CardInfoState createState() => _CardInfoState();
}

class _CardInfoState extends State<CardInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          border: BorderDirectional(
            bottom: BorderSide(
              width: 1,
              color: Colors.black26
          )
        )),
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
            Text(
              "R\$ ${widget.value.toStringAsFixed(2)}",
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
