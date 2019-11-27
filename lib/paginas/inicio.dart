
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oriabana_project/custons/itens.dart';
import 'package:oriabana_project/paginas/vasos.dart';
import 'package:oriabana_project/utils/nav.dart';

VasosIndexados caixaEstrelada = VasosIndexados(
  'caixaestrelada',
  'assets/vaso1.png',
  'Caixa Estrelada',
  'A Caixa Estrelada foi o primeiro bla bla bla',
  'RFnazAsMOQI',
    ['corte','dobre']
);
VasosIndexados vasoChino = VasosIndexados(
  'vasochines',
  'assets/vaso2.png',
  'Vaso Chinês',
  'O Vaso Chinês é o mais difícil e tals ...',
  'cNplZrRSjeI',
    ['corte','dobre','pa']
);
VasosIndexados caixaQuadrada = VasosIndexados(
  'caixaquadrada',
  'assets/vaso3.png',
  'Caixa Quadrada',
  'A Caixa Quadrada blblablabdoiabsdujahbsudbauisd ...',
  'g9hwjQBQFIo',
  ['corte','dobre','corte','pa']
);

List<VasosIndexados> vasos = [caixaEstrelada, vasoChino, caixaQuadrada];


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Oribana',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
        ),
      ),
      backgroundColor: Color(0xFFFFEAEC),
      body: _body(context),
    );
  }

  _body(context) {
    var consulta = MediaQuery.of(context).size;
    double maior = 0.1;
    double menor = 0.1 ;
    if (consulta.height < consulta.width) {
      maior = consulta.width;
      menor = consulta.height;
    } else {
      menor = consulta.width;
      maior = consulta.height;
    }
    return Container(
      margin: EdgeInsets.fromLTRB(60, 80, 0, 0),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Color(0xFFFFF7F9),
          borderRadius: BorderRadius.all(Radius.circular(5))),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: 100,
            height: 0,
          ),botaoRed(context, 'Vasos', onpressed: () => passaPagina(context, Vasos(maior,menor,vasos))),
          botaoRed(context, 'Esponja'),
          botaoRed(context, 'Exemplos')
        ],
      ),
      constraints: BoxConstraints(
        minHeight: 0,
        maxHeight: 155,
      ),
    );
  }
  botaoRed(BuildContext context, String texto,{double largura = 90, double altura = 40, onpressed }){
    return RaisedButton(
      color: Colors.redAccent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        width: largura,
        height: altura,
        child: Center(child:Text(
          texto,
          style: TextStyle(
              fontSize: 20,
              color: Colors.white
          ),
        ),
        ),),
      onPressed: onpressed,
    );
  }
  void passaPagina(BuildContext context, Widget pagina) async{
    String a = await push(context, pagina);
  }
}
