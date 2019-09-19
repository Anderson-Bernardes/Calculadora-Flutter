import 'package:calculadora/main.dart';
import 'package:flutter/material.dart';

class TelaInfos extends StatefulWidget {
  double resultado;
  TelaInfos(double resultado);

  @override
  _TelaInfosState createState() => _TelaInfosState();
}

class _TelaInfosState extends State<TelaInfos> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Container(

        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Center(
                child: Text("Resultado: ${resultado.toString()}",
                  style: TextStyle(fontSize: 40, color: Colors.blueAccent),
                ),
              ),
            ),
            Container(
              width: 280.0,
              height: 280.0,
              decoration: BoxDecoration(
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage('imagens/logo_pucminas.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text("Criado por \n Anderson Bernardes e \nMarcely Sastre Alunos do Curso de Ciência da Computação da PUC Minas de Poços de Caldas",
                textAlign: TextAlign.center ,style: TextStyle(
                  fontSize: 30,
                ),
              ),
            )

          ],
        ),

      ),
    );

  }
}
