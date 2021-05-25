import 'package:flutter/cupertino.dart';
import 'package:supcal/widget/CardTipoCalculadora.dart';

class ListaCalculadoraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CardTipoCalculadora(),
        CardTipoCalculadora(),
      ],
    );
  }
}
