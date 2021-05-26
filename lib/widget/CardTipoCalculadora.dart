import 'package:flutter/material.dart';

class CardTipoCalculadora extends StatelessWidget {
  final IconData icon;
  final String titulo;
  CardTipoCalculadora({required this.icon, required this.titulo});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.redAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.black87,
            size: 25,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            titulo,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.black54,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
