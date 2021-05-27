import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CalculadoraPadao.Page.dart';
import 'Informacoes.Page.dart';
import 'ListaCalculadora.Page.dart';
import 'ListaCalculadoraApi.Page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: AppBar().preferredSize.height,
          bottom: TabBar(
            indicatorColor: Colors.transparent,
            labelColor: Theme.of(context).accentColor,
            unselectedLabelColor: Colors.black54,
            tabs: [
              Tab(
                child: Icon(
                  Icons.calculate_outlined,
                  size: 30,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.table_view_outlined,
                  size: 30,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.view_in_ar_outlined,
                  size: 30,
                ),
              ),
              Tab(
                child: Icon(
                  Icons.info_outline,
                  //Icons.more_vert,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CalculadoraPadaoPage(),
            ListaCalculadoraPage(),
            ListaCalculadoraApiPage(),
            InformacoesPage(),
          ],
        ),
      ),
    );
  }
}
