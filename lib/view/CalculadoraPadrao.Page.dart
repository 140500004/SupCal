import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:supcal/controller/ControllerCalculadoraPadrao.dart';
import 'package:supcal/widget/Botao.dart';

class CalculadoraPadraoPage extends StatefulWidget {
  @override
  _CalculadoraPadraoPageState createState() => _CalculadoraPadraoPageState();
}

class _CalculadoraPadraoPageState extends State<CalculadoraPadraoPage> {
  final controller = ControllerCalculadoraPadrao();

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
                    child: ListView(
                      padding: EdgeInsets.only(top: 125),
                      shrinkWrap: true,
                      children: [
                        Text(
                          "0.",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black26,
                          ),
                        ),
                      ],
                    ),
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
                          child: Observer(
                            builder: (_) => Text(
                              "${controller.valores.length == 0 ? '' : '${controller.valores.join('')}'}",
                              style: TextStyle(
                                fontSize: controller.valores.length < 9
                                    ? 60
                                    : controller.valores.length > 30
                                        ? 25
                                        : (60 - controller.valores.length - 5),
                                color: Colors.black45,
                              ),
                            ),
                          ),
                        ),
                        Observer(
                          builder: (_) => Text(
                            "${controller.resultado.toString()}",
                            style: TextStyle(
                              fontSize: 75,
                            ),
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
                      InkWell(
                        onTap: () {
                          controller.valores.clear();
                          controller.resultado = 0;
                        },
                        child: Botao(
                          conteudo: 'C',
                          cor: Colors.red,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          if (controller.valores.length > 0) {
                            controller.valores.removeLast();
                          } else {
                            controller.valores.clear();
                            controller.resultado = 0;
                          }
                        },
                        child: Botao(
                          conteudo: '⌫',
                          cor: Colors.red,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add('%');
                        },
                        child: Botao(
                          conteudo: '%',
                          cor: Colors.red,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add('÷');
                        },
                        child: Botao(
                          conteudo: '÷',
                          cor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          controller.valores.add(7);
                        },
                        child: Botao(
                          conteudo: '7',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add(8);
                        },
                        child: Botao(
                          conteudo: '8',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add(9);
                        },
                        child: Botao(
                          conteudo: '9',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add('x');
                        },
                        child: Botao(
                          conteudo: 'x',
                          cor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          controller.valores.add(4);
                        },
                        child: Botao(
                          conteudo: '4',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add(5);
                        },
                        child: Botao(
                          conteudo: '5',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add(6);
                        },
                        child: Botao(
                          conteudo: '6',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add('-');
                        },
                        child: Botao(
                          conteudo: '-',
                          cor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          controller.valores.add(1);
                        },
                        child: Botao(
                          conteudo: '1',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add(2);
                        },
                        child: Botao(
                          conteudo: '2',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add(3);
                        },
                        child: Botao(
                          conteudo: '3',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add('+');
                        },
                        child: Botao(
                          conteudo: '+',
                          cor: Colors.red,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Botao(
                          conteudo: '#',
                          cor: Colors.red,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add(0);
                        },
                        child: Botao(
                          conteudo: '0',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          controller.valores.add('.');
                        },
                        child: Botao(
                          conteudo: '.',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Primeiro elemento
                          if (controller.valores.length == 1) {
                            controller.resultado = "=${controller.valores[0]}";
                          }

                          var aux = 0;
                          controller.valores.forEach((element) {
                            if (controller.valores.runtimeType == "String") {
                            } else {
                              controller.resultado += element;
                            }
                          });
                        },
                        child: Botao(
                          conteudo: '=',
                          cor: Colors.red,
                          corFundo: 'S',
                        ),
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
