import 'package:flutter/material.dart';

class CardTipoCalculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3,
      height: MediaQuery.of(context).size.width / 3,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Icone"),
          Text("Nome"),
        ],
      ),
    );
  }
}
