import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:supcal/widget/CardTipoCalculadora.dart';

class ListaCalculadoraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GridView.count(
        crossAxisCount: 3,
        children: [
          CardTipoCalculadora(
            icon: Icons.data_saver_on_outlined,
            titulo: "Dados",
          ),
          CardTipoCalculadora(
            icon: Icons.architecture_sharp,
            titulo: "Área",
          ),
          CardTipoCalculadora(
            icon: Icons.date_range_outlined,
            titulo: "Data",
          ),
          CardTipoCalculadora(
            icon: Icons.balcony_sharp,
            titulo: "IMC",
          ),
          CardTipoCalculadora(
            icon: Icons.hourglass_empty,
            titulo: "Idade",
          ),
          CardTipoCalculadora(
            icon: Icons.money_off,
            titulo: "Desconto",
          ),
          CardTipoCalculadora(
            icon: Icons.receipt,
            titulo: "Comprimento",
          ),
          CardTipoCalculadora(
            icon: Icons.power,
            titulo: "Temperatura",
          ),
          CardTipoCalculadora(
            icon: Icons.balcony_outlined,
            titulo: "Massa",
          ),
          CardTipoCalculadora(
            icon: Icons.format_list_numbered,
            titulo: "Sistema numérico",
          ),
          CardTipoCalculadora(
            icon: Icons.timeline,
            titulo: "Velocidade",
          ),
          CardTipoCalculadora(
            icon: Icons.timer_10_select,
            titulo: "Tempo",
          ),
          CardTipoCalculadora(
            icon: Icons.cloud_upload,
            titulo: "Volume",
          ),
        ],
      ),
    );
  }
}
