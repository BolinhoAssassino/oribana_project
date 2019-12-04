import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Sobre extends StatelessWidget {
  double maior;
  double menor;
  Sobre(this.maior, this.menor);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sobre'),
      ),
      backgroundColor: Color(0xFFFFEAEC),
      body: _body(context),
    );
  }

  _body(context) {
    return Container(
      margin: EdgeInsets.fromLTRB(menor * 0.02, menor * 0.02, menor * 0.02, menor* 0.02),
      padding: EdgeInsets.fromLTRB(menor * 0.03, menor * 0.03, menor * 0.03, menor* 0.03),
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(blurRadius: 1.0, color: Color(0xFFf5c6cb))]
      ),
      child: ListView(
        children: <Widget>[
          _textoHighlight('Projeto Oribana'),
          _textoNormal('O projeto Oribana tem como o objetivo ensinar as pessoas fazerem vasinhos de origami. (>*-*)> \n'),
          _textoHighlight('Vasinho de origami'),
          _textoNormal('O Vasinho de origami foi uma ideia que surgiu da necessidade de um recipiente barato e sustentável para nossas atividades.\n'),
          _textoHighlight('Objetivo do vasinho'),
          _textoNormal(
              'Os vasinhos de origami tem como o objetivo juntar duas técnicas japonesas (Origami e Ikebana) em conjunto com a sustentabilidade e a economia de recursos , pois, papel é um recurso quase que'
              ' ilimitado em meios urbanos e em países economicamente quebrados.'),
          _me(context),
        ],
      ),
    );
  }
  _textoHighlight(String texto){
    return Text(texto,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 26,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
  }
  _textoNormal(String texto){
    return Text(texto,
      textAlign: TextAlign.left,
      style: TextStyle(
        fontSize: 20,
        color: Colors.black87,
      ),
    );
  }
  _textApresentacao(String texto){
    return  Text(texto,
        textAlign: TextAlign.left,
        style: TextStyle(
        fontSize: maior*0.022,
        color: Colors.black,
          fontWeight: FontWeight.bold
  ),);
  }
  _textApresentacaoOK(String texto){
    return  Text(texto,
          textAlign: TextAlign.left,
          style: TextStyle(
          fontSize: maior*0.022,
          color: Colors.black87,
      ),
    );
  }
  _apresentacaoLink(url)async {
      if (await canLaunch(url)){
        await launch(url);
      } else (
          throw 'Nao foi possivel abrir o video'
      );
  }
  _rowTextos(String texto1, String texto2){
    return Wrap(
      children: <Widget>[_textApresentacao(texto1),_textApresentacaoOK(texto2)],
    );
  }
  _me(context) {
    return Container(
      margin: EdgeInsets.fromLTRB(menor * 0.001, menor * 0.041, menor * 0.001, menor* 0.001),
      padding: EdgeInsets.fromLTRB(menor * 0.02, menor * 0.02, menor * 0.02, menor* 0.02) ,
      height: maior * 0.26,
      decoration: BoxDecoration(
        color: Colors.white70,
      ),
      child: Column(
        children: <Widget>[Text('Criador do app e dos vasinhos',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, ),
              textAlign: TextAlign.center,
            ),
          Row(
            children: <Widget>[
              Container(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/o_cara.jpg'),
                ),
                height:maior * 0.18,
                width: maior * 0.18,
              ),
              Expanded(
                  child: Container(
                    height: maior * 0.18,
                    child: ListView(
                      children: <Widget>[
                        _rowTextos('Nome: ', 'Yuri Guilherme Santos'),
                        _rowTextos('Profissao:', 'Programador e o Cara'),
                        SizedBox(height: 2,),
                        _textApresentacao('Em@il'),
                        Container(
                        ),
                        _textApresentacaoOK('yuriguilherme200@gmail.com')
                      ],
                    ),
                  ),
              )
            ],
          ),
        ],
      ),
    );
  }

}
