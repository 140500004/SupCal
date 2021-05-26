import 'package:flutter/material.dart';
import 'package:supcal/widget/Botao.dart';

class CalculadoraPadaoPage extends StatefulWidget {
  @override
  _CalculadoraPadaoPageState createState() => _CalculadoraPadaoPageState();
}

class _CalculadoraPadaoPageState extends State<CalculadoraPadaoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                right: 30,
              ),
              height: MediaQuery.of(context).size.height / 2 - 100,
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 2 / 2 - 50,
                    width: double.infinity,
                    //color: Colors.red,
                    child: Text("History .."),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 2 / 2 - 50,
                    width: double.infinity,
                    //color: Colors.amber,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Text(
                            "1234567897",
                            style: TextStyle(
                              fontSize: 60,
                              color: Colors.black45,
                            ),
                          ),
                        ),
                        Text(
                          "0",
                          style: TextStyle(
                            fontSize: 75,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 25, right: 25),
              height: 0.3,
              color: Colors.black45,
            ),
            Container(
              //height: MediaQuery.of(context).size.height / 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Botao(
                        conteudo: 'C',
                        cor: Colors.red,
                      ),
                      Botao(
                        conteudo: '⌫',
                        cor: Colors.red,
                      ),
                      Botao(
                        conteudo: '%',
                        cor: Colors.red,
                      ),
                      Botao(
                        conteudo: '÷',
                        cor: Colors.red,
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
                        conteudo: 'x',
                        cor: Colors.red,
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
                        conteudo: '-',
                        cor: Colors.red,
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
                        cor: Colors.red,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Botao(
                        conteudo: '#',
                        cor: Colors.red,
                      ),
                      Botao(
                        conteudo: '0',
                      ),
                      Botao(
                        conteudo: ',',
                      ),
                      Botao(
                        conteudo: '=',
                        cor: Colors.red,
                        corFundo: 'S',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
