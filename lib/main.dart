import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Frases do Dia",
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "A Pequena Sereia é ruiva.",
    "A Pequena Sereia é morena.",
    "A Pequena Sereia é loira.",
    "A Pequena Sereia é careca."
  ];

  var _fraseGerada = "Pressione o botão abaixo para gerar uma nova frase.";

  void _aleatoriza () {
    int numeroAleatorio = 0;

    numeroAleatorio = Random().nextInt(_frases.length);

    setState(() {
      _fraseGerada = _frases[numeroAleatorio];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("images/logo.png"),
              Text(
                _fraseGerada,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 17,
                  decoration: TextDecoration.none,
                ),
              ),
              RaisedButton(
                padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                onPressed: (){
                  _aleatoriza();
                },
                child: Text(
                    "Nova frase",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                color: Colors.green,
                textColor: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
