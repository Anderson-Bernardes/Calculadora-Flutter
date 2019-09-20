import 'package:flutter/material.dart';
import 'dart:math';
import 'infos.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = PageController(
    initialPage: 1,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora Anderson Bernardes & Marcely Sastre", textAlign: TextAlign.center, maxLines: 2,
          style: TextStyle(fontSize: 25),),
          centerTitle: true,
        ),
        body: buildPageView());
  }
}


buildPageView() {
  return PageView(
    children: <Widget>[
      Calculadora(),
      TelaInfos(resultado),
    ],
  );
}

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

double resultado = 0;
String visor = "";
String equacao2 = "";
double n1 = null, n2 = null;
String n1String, n2String;
double memoria = null;
String operacao;

class _CalculadoraState extends State<Calculadora> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: 200,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    operacao != "raiz"
                        ? Text("")
                        :
                    Container(
                      width: 90.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        image: DecorationImage(
                          image: AssetImage('imagens/raiz.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      visor,
                      style: TextStyle(fontSize: 50),
                    )
                  ],
                ),
                GestureDetector(
                  onLongPress: () {
                    setState(() {
                      if (resultado != 0) {
                        memoria = resultado;
                      }
                    });
                  },
                  child: Text(
                    resultado.toString(),
                    style: TextStyle(fontSize: 40),
                  ),
                ),
                memoria != null
                    ? Text(
                        "Memoria: " + memoria.toString(),
                        style: TextStyle(fontSize: 25),
                      )
                    : Text(
                        "",
                        style: TextStyle(fontSize: 10),
                      )
              ],
            ),
            //color: Colors.red,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            FlatButton(
                onPressed: () {
                  setState(() {
                    visor += "7";
                    equacao2 += "7";
                  });
                },
                child: Text(
                  "7",
                  style: TextStyle(fontSize: 40),
                )),
            FlatButton(
                onPressed: () {
                  setState(() {
                    visor += "8";
                    equacao2 += "8";
                  });
                },
                child: Text(
                  "8",
                  style: TextStyle(fontSize: 40),
                )),
            FlatButton(
                onPressed: () {
                  setState(() {
                    visor += "9";
                    equacao2 += "9";
                  });
                },
                child: Text(
                  "9",
                  style: TextStyle(fontSize: 40),
                )),
            GestureDetector(
              onLongPress: () {
                setState(() {
                  visor = "";
                  resultado = 0;
                  n1 = null;
                  equacao2 = "";
                  operacao = "";
                  memoria = null;
                });
              },
              child: FlatButton(
                  onPressed: () {
                    setState(() {
                      if (visor.length > 0) {
                        visor = visor.substring(0, visor.length - 1);
                        if (equacao2 != "")
                          equacao2 = equacao2.substring(0, equacao2.length - 1);
                      }
                      if (n1 != null && equacao2 != "" && equacao2 == "") {
                        equacao2 = "";
                      }
                    });
                  },
                  child: Icon(
                    Icons.backspace,
                    size: 40,
                  )),
            ),
          ]),
          Row(
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    setState(() {
                      visor += "4";
                      equacao2 += "4";
                    });
                  },
                  child: Text(
                    "4",
                    style: TextStyle(fontSize: 40),
                  )),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      visor += "5";
                      equacao2 += "5";
                    });
                  },
                  child: Text(
                    "5",
                    style: TextStyle(fontSize: 40),
                  )),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      visor += "6";
                      equacao2 += "6";
                    });
                  },
                  child: Text(
                    "6",
                    style: TextStyle(fontSize: 40),
                  )),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      print(n1);
                      print(equacao2);
                      print(operacao);
                      print(resultado);
                      if (n1 == null && equacao2 != "") {
                        visor += "+";
                        n1 = double.parse(equacao2);
                        operacao = "+";
                        equacao2 = "";
                      } else {}
                    });
                  },
                  child: Icon(
                    Icons.add,
                    size: 40,
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    setState(() {
                      visor += "1";
                      equacao2 += "1";
                    });
                  },
                  child: Text(
                    "1",
                    style: TextStyle(fontSize: 40),
                  )),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      visor += "2";
                      equacao2 += "2";
                    });
                  },
                  child: Text(
                    "2",
                    style: TextStyle(fontSize: 40),
                  )),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      visor += "3";
                      equacao2 += "3";
                    });
                  },
                  child: Text(
                    "3",
                    style: TextStyle(fontSize: 40),
                  )),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      if (n1 == null && equacao2 != "") {
                        visor += "-";
                        n1 = double.parse(equacao2);
                        operacao = "-";
                        equacao2 = "";
                      } else {}
                    });
                  },
                  child: Text(
                    "-",
                    style: TextStyle(fontSize: 40),
                  )),
            ],
          ),
          Row(
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    setState(() {
                      if (equacao2 != "") {
                        equacao2 += ".";
                        visor += ".";
                      }
                    });
                  },
                  child: Text(
                    ".",
                    style: TextStyle(fontSize: 40),
                  )),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      equacao2 += "0";
                      visor += "0";
                    });
                  },
                  child: Text(
                    "0",
                    style: TextStyle(fontSize: 40),
                  )),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      print(n1);
                      print(operacao);
                      print(equacao2);
                      if (operacao == "+") {
                        resultado = 0;
                        resultado = n1 + double.parse(equacao2);
                        operacao = "";
                        visor = "";
                        n1 = null;
                        equacao2 = "";
                      }
                      if (operacao == "raiz") {
                        if (equacao2 != null) {
                          resultado = 0;
                          resultado = sqrt(double.parse(equacao2));
                          operacao = "";
                          visor = "";
                          n1 = null;
                          equacao2 = "";
                        }
                      }
                      if (operacao == "-") {
                        if (equacao2 != null) {
                          resultado = 0;
                          resultado = n1 - double.parse(equacao2);
                          operacao = "";
                          visor = "";
                          n1 = null;
                          equacao2 = "";
                        }
                      }
                      if (operacao == "*") {
                        if (equacao2 != null) {
                          resultado = 0;
                          resultado = n1 * double.parse(equacao2);
                          operacao = "";
                          visor = "";
                          n1 = null;
                          equacao2 = "";
                        }
                      }
                      if (operacao == "/") {
                        if (equacao2 != null) {
                          resultado = 0;
                          resultado = n1 / double.parse(equacao2);
                          operacao = "";
                          visor = "";
                          n1 = null;
                          equacao2 = "";
                        }
                      }
                      if (operacao == "exp") {
                        if (equacao2 != null) {
                          resultado = 0;
                          resultado = pow(double.parse(equacao2), 2);
                          operacao = "";
                          visor = "";
                          n1 = null;
                          equacao2 = "";
                        }
                      }
                      print(resultado);
                    });
                  },
                  child: Text(
                    "=",
                    style: TextStyle(fontSize: 40),
                  )),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      if (n1 == null && equacao2 != "") {
                        visor += "*";
                        n1 = double.parse(equacao2);
                        operacao = "*";
                        equacao2 = "";
                      } else {}
                    });
                  },
                  child: Text(
                    "*",
                    style: TextStyle(fontSize: 40),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: () {
                    setState(() {
                      if (n1 == null) {
                        if (equacao2 != "") memoria = double.parse(equacao2);
                      } else {
                        memoria = n1;
                      }
                    });
                  },
                  child: Text(
                    "M+",
                    style: TextStyle(fontSize: 40),
                  )),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      if (memoria != null) {
                        equacao2 = memoria.toString();
                        visor = memoria.toString();
                        operacao = "";
                        n1 = null;
                      }
                    });
                  },
                  child: Text(
                    "Mc",
                    style: TextStyle(fontSize: 40),
                  )),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      if (n1 == null && equacao2 != "") {
                        visor += "/";
                        n1 = double.parse(equacao2);
                        operacao = "/";
                        equacao2 = "";
                      } else {}
                    });
                  },
                  child: Text(
                    "/",
                    style: TextStyle(fontSize: 40),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: () {
                  setState(() {
                    if (equacao2 == "") {
                      visor += "";
                      operacao = "raiz";
                    }
                  });
                },
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                      image: AssetImage('imagens/raiz.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              FlatButton(
                  onPressed: () {
                    setState(() {
                      if (equacao2 != "") {
                        visor += "²";
                        operacao = "exp";
                      }
                    });
                  },
                  child: Text(
                    "X²",
                    style: TextStyle(fontSize: 60),
                  )),
            ],
          ),
          RaisedButton(
            child: Text(
              'Informações',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
              color: Colors.blueAccent,
              onPressed:  (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>TelaInfos(resultado)));
              }
          ),
        ],
      ),
    );
  }
}
