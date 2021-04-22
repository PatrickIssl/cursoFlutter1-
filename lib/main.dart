import 'dart:math';
import 'dart:math';

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Sou apenas um pequeno planeta que se perde diariamente em todo o seu universo.",
    "Novas amizades serão sempre bem-vindas para darem cor e alegria ao meu dia a dia.",
    "Gratidão não é pagamento, mas um reconhecimento que se demonstra no dia a dia.",
    "Nem toda mudança importante acontece de repente e faz barulho, algumas são silenciosas e vão se fazendo no dia a dia.",
    "O amor é a asa veloz que Deus deu à alma para que ela voe até o céu.",
    "Deus, agradeço a você sempre, por me dar a vida que tenho.",
    "Ando sempre tranquilo, porque sei que ando ao lado de Deus.",
    "Fé em Deus é o modo como encaro a vida.",
    "Quando penso em Deus, sinto-me mais forte.",
    "Olho ao meu redor e agradeço a Deus, todos os dias.",
    "Preencha o seu coração com as palavras do Senhor.",
    "Deus é puríssima essência. Para os que têm fé nele, Deus simplesmente é.",
    "Eu sou dessas que joga e não para… E que faz o que pensa só pra causar!",
    "Amar, amei; doeu e hoje eu vim queimar buquês.",
    "Eu sou paciente, coração é meu doutor.",
    "Gata tu não é cu mas so faz cagada"
  ];

  var _fraseGerada =  "Clique abaixo para gerar uma frase!";

  void _gerarFrase(){

    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada =  _frases[ numeroSorteado ];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("frases do dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        // decoration: BoxDecoration(
        //   border: Border.all(width: 3, color: Colors.amber)
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
                _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 25,
                fontStyle: FontStyle.italic,
                color: Colors.black
              ),
            ),
            RaisedButton(
              child: Text(
                "Nova Frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.green,
              onPressed: _gerarFrase,
            )
          ]
        ),
      ),
    );
  }
}
