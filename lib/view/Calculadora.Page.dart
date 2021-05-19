import 'package:flutter/material.dart';
import 'package:supcal/widget/Botao.dart';

class CalculadoraPage extends StatefulWidget {
  @override
  _CalculadoraPageState createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 33),
          child: Column(
            children: [
              Container(
                color: Colors.white60,
                height: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.calculate_outlined,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.table_view_outlined,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.view_in_ar_outlined,
                        size: 30,
                      ),
                      onPressed: () {},
                    ),
                    //Icon(Icons.adaptive.more)
                    PopupMenuButton<String>(
                      //onSelected: choiceAction,
                      itemBuilder: (BuildContext context) {
                        return ['Histórico', 'Sobre'].map((String value) {
                          return PopupMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList();
                      },
                    )
                  ],
                ),
              ),
              Container(
                color: Colors.black12,
                height: MediaQuery.of(context).size.height / 3 - 33,
                child: Center(
                  child: Text("Visor"),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                //height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Botao(
                          conteudo: 'C',
                          cor: Colors.red,
                          B
                        ),
                        Botao(
                          conteudo: '<',
                        ),
                        Botao(
                          conteudo: '%',
                        ),
                        Botao(
                          conteudo: '/',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Botao(
                          conteudo: '7',
                        ),
                        Botao(
                          conteudo: '8',
                        ),
                        Botao(
                          conteudo: '9',
                        ),
                        Botao(
                          conteudo: 'X',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Botao(
                          conteudo: '4',
                        ),
                        Botao(
                          conteudo: '5',
                        ),
                        Botao(
                          conteudo: '6',
                        ),
                        Botao(
                          conteudo: 'X',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Botao(
                          conteudo: '1',
                        ),
                        Botao(
                          conteudo: '2',
                        ),
                        Botao(
                          conteudo: '3',
                        ),
                        Botao(
                          conteudo: '+',
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Botao(
                          conteudo: '#',
                        ),
                        Botao(
                          conteudo: '0',
                        ),
                        Botao(
                          conteudo: ',',
                        ),
                        Botao(
                          conteudo: '=',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
