import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String conteudo;
  Color cor;
  Botao({required this.conteudo, this.cor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 4,
      height: MediaQuery.of(context).size.width / 4,
      child: FlatButton(
        color: cor,
        onPressed: () {},
        child: Text("${conteudo}"),
      ),
    );
  }
}
