import 'package:flutter/material.dart';
import 'package:supcal/widget/CardTipoCalculadora.dart';

class ListaCalculadoraApiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          CardTipoCalculadora(
            icon: Icons.money,
            titulo: "Moeda",
          ),
          CardTipoCalculadora(
            icon: Icons.file_download,
            titulo: "GST",
          ),
          CardTipoCalculadora(
            icon: Icons.money_rounded,
            titulo: "Emprédtimo",
          ),
          CardTipoCalculadora(
            icon: Icons.upload_sharp,
            titulo: "Investimento",
          ),
        ],
      ),
    );
  }
}
