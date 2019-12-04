import 'package:flutter/material.dart';
import 'package:oriabana_project/custons/itens.dart';

class Instrucoes extends StatelessWidget {
  double maior;
  double menor;
  VasosIndexados vaso;
  Color cor;
  Instrucoes(this.maior, this.menor, this.vaso, this.cor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('diagrama'),
        backgroundColor: cor,
      ),
      backgroundColor: Color(0xFFFFEAEC),
      body: _body(),
    );
  }

  _body(){
    return  Container(
      margin: EdgeInsets.fromLTRB(menor * 0.015, menor * 0.015, menor * 0.015, 0),
      color: cor,
      child: ListView(
        children:  _diagramador()
        ,
      ),
    );
  }
  _diagramador(){
    var contador = 0;
    List<Widget> diagrama = [];
    for (String instrucoes in vaso.instrucoresDiagrama){
      Widget palavras = Center(
        child: Text(
          '$contador. $instrucoes',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      );
      Widget imagem = Center(
        child: Container(
          width: menor * 0.9,
          height: menor * 0.9,
          child: Image.asset(
            'assets/vasos/${vaso.titulo}_$contador.png',
            fit: BoxFit.contain,
          ),
        ),
      );
      print(palavras);
      diagrama.add(imagem);
      diagrama.add(palavras);
      contador ++;
    }
    diagrama.add(SizedBox(height: 50,));
    diagrama.add(Container(height: menor * 0.015, color: Color(0xFFFFEAEC)));
    return diagrama;
  }
}
