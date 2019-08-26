import 'package:flutter/material.dart';

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
  String resultado = "Resultato";
  String equacao = "";
  double n1, n2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Calculadora Anderson Bernardes &\n Marcely Sastre"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                //color: Colors.red,
                child: Text(
                  equacao,
                  style: TextStyle(fontSize: 50),
                ),
              ),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    FlatButton(
                        onPressed: () {
                          setState(() {
                            equacao += "7";
                          });
                        },
                        child: Text(
                          "7",
                          style: TextStyle(fontSize: 40),
                        )),
                    FlatButton(
                        onPressed: () {
                          setState(() {
                            equacao += "8";
                          });
                        },
                        child: Text(
                          "8",
                          style: TextStyle(fontSize: 40),
                        )),
                    FlatButton(
                        onPressed: () {
                          setState(() {
                            equacao += "9";
                          });
                        },
                        child: Text(
                          "9",
                          style: TextStyle(fontSize: 40),
                        )),
                    GestureDetector(
                      onLongPress: () {
                        setState(() {
                          equacao = "";
                        });
                      },
                      child: FlatButton(
                          onPressed: () {
                            setState(() {
                              if (equacao.length > 0) {
                                equacao =
                                    equacao.substring(0, equacao.length - 1);
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
                          equacao += "4";
                        });
                      },
                      child: Text(
                        "4",
                        style: TextStyle(fontSize: 50),
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += "5";
                        });
                      },
                      child: Text(
                        "5",
                        style: TextStyle(fontSize: 50),
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += "6";
                        });
                      },
                      child: Text(
                        "6",
                        style: TextStyle(fontSize: 50),
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          if(equacao.length <= 0){
                          }
                          else
                            equacao += "+";
                        });
                      },
                      child: Icon(
                        Icons.add,
                        size: 50,
                      )),
                ],
              ),
              Row(
                children: <Widget>[
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += "1";
                        });
                      },
                      child: Text(
                        "1",
                        style: TextStyle(fontSize: 50),
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += "2";
                        });
                      },
                      child: Text(
                        "2",
                        style: TextStyle(fontSize: 50),
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += "3";
                        });
                      },
                      child: Text(
                        "3",
                        style: TextStyle(fontSize: 50),
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += "-";
                        });
                      },
                      child: Text(
                        "-",
                        style: TextStyle(fontSize: 50),
                      )),
                ],
              ),
              Row(
                children: <Widget>[
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += ",";
                        });
                      },
                      child: Text(
                        ",",
                        style: TextStyle(fontSize: 50),
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += "0";
                        });
                      },
                      child: Text(
                        "0",
                        style: TextStyle(fontSize: 50),
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += "=";
                        });
                      },
                      child: Text(
                        "=",
                        style: TextStyle(fontSize: 50),
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += "X";
                        });
                      },
                      child: Text(
                        "X",
                        style: TextStyle(fontSize: 50),
                      )),
                ],
              ),
              Row(
                children: <Widget>[
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += "M+";
                        });
                      },
                      child: Text(
                        "M+",
                        style: TextStyle(fontSize: 50),
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += "Mc";
                        });
                      },
                      child: Text(
                        "Mc",
                        style: TextStyle(fontSize: 50),
                      )),
                  FlatButton(
                      onPressed: () {
                        setState(() {
                          equacao += "raiz";
                        });
                      },
                      child: Text("RAIZ")),
                ],
              )
            ],
          ),
        ));
  }
}
