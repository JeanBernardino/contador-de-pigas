import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "CONTADOR DE PIGAS",
      home: Home()));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _pigas = 0;
  String _mensagem;

  void _changePigas(int gift){
      setState((){
        _pigas += gift;

        if(_pigas > 10){
          _mensagem = "VAI COM CALMA POHA!";
        }else if(_pigas < 0){
          _pigas = 0;
        }else{
          _mensagem = "PIGAS HEHEHEHE!";
        }
      });
  }

  @override
  Widget build(BuildContext context) {
    return 
      Stack(
        children: <Widget>[
          Image.asset("images/fundo.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
          ),
        Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("CIGARROS: $_pigas",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
              onPressed: () {
                _changePigas(1);
              },
              child: Text(
                "+1",
                style: TextStyle(fontSize: 40.0, color: Colors.black),
              )),
          ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: FlatButton(
              onPressed: () {
                _changePigas(-1);
              },
              child: Text(
                "-1",
                style: TextStyle(fontSize: 40.0, color: Colors.black),
              )),
          ),
]
              ),
          Text(_mensagem,
              style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0)),
        ],
      )
        ],
      );
  }
}
