import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'CalculadoraPadao.Page.dart';
import 'ListaCalculadora.Page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.red,
          toolbarHeight: AppBar().preferredSize.height,
          bottom: TabBar(
            //indicatorColor: Colors.transparent,
            tabs: [
              Tab(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.calculate_outlined,
                    size: 30,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.table_view_outlined,
                    size: 30,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.view_in_ar_outlined,
                    size: 30,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
              Tab(
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.more_vert,
                    size: 30,
                    color: Theme.of(context).accentColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            CalculadoraPadaoPage(),
            ListaCalculadoraPage(),
            Text("3"),
            Text("4"),
          ],
        ),
      ),
    );
  }
}
