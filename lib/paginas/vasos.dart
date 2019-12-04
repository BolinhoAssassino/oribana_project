import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:oriabana_project/custons/itens.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:oriabana_project/paginas/instrucoes.dart';
import 'package:oriabana_project/utils/nav.dart';

class Vasos extends StatefulWidget {
  final double maior;
  final double menor;
  final List<VasosIndexados> vasos;
  final Color cor;
  final String titulo;
  @override
  Vasos(this.maior, this.menor, this.vasos, this.cor, this.titulo);

  _VasosState createState() => _VasosState();
}

class _VasosState extends State<Vasos> {
  PageController pageController;
  var indice = 0;
  bool estadoVideo = false;
  Widget dinamico;

  @override

  void Videozar() {
    setState(() {
      estadoVideo = !estadoVideo;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.titulo),
        backgroundColor: widget.cor,
      ),
      backgroundColor: Color(0xFFFFEAEC),
      body: _body(context),
    );
  }

  _body(context) {
    return Stack(children: <Widget>[
      _back(context),
    ]);
  }

  _video(String url) async {
    if (await canLaunch(url)){
      await launch(url);
    } else (
      throw 'Nao foi possivel abrir o video'
    );
  }

  _back(BuildContext context) {
    var consulta = MediaQuery.of(context).size;
    return ListView(
      controller: pageController,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all((widget.menor * 0.015)),
          height: widget.maior * 0.35,
          decoration: BoxDecoration(
            color: Color(0xFFFFF7F9),
          ),
          child: _slide(widget.maior, widget.menor),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: widget.cor,
              child: Text(
                'Diagrama',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                push(
                    context,
                    Instrucoes(
                        widget.maior, widget.menor, widget.vasos[indice],widget.cor));
              },
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              color: widget.cor,
              child: Icon(Icons.ondemand_video),
              onPressed: () {
                _video(widget.vasos[indice].VideoLink);
                print(estadoVideo);
              },
            ),
          ],
        ),
        Container(
          margin: EdgeInsets.all((consulta.width * 0.015)),
          decoration: BoxDecoration(
            color: Color(0xFFFFF7F9),
          ),
          constraints: BoxConstraints(minHeight: widget.maior * 0.4),
          child: Column(
            children: <Widget>[
              Text(
                //TITULO DESCRICAO
                widget.vasos[indice].tituloDescricao,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              Text(
                //DESCRICAO
                widget.vasos[indice].Descricao,
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 3.0,
              ),
            ],
          ),
        ),
      ],
    );
  }

  _imgPreparada(VasosIndexados vaso) {
    return ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
        child: Image.asset(vaso.ImageLocal, fit: BoxFit.cover));
  }

  _slide(double maior, double menor) {
    return CarouselSlider(
      items: widget.vasos.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 5.0),
                child: _imgPreparada(i));
          },
        );
      }).toList(),
      initialPage: 0,
      onPageChanged: (index) {
        setState(() {
          indice = index;
        });
      },
    );
  }
}
