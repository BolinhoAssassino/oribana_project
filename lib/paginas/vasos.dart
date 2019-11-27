import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';
import 'package:oriabana_project/custons/itens.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:oriabana_project/paginas/instrucoes.dart';
import 'package:oriabana_project/utils/nav.dart';

class Vasos extends StatefulWidget {
  final double maior;
  final double menor;
  final List<VasosIndexados> vasos;

  @override
  Vasos(this.maior, this.menor, this.vasos);

  _VasosState createState() => _VasosState();
}

class _VasosState extends State<Vasos> {
  VideoPlayerController playerController;
  VoidCallback escutador;
  PageController pageController;
  var indice = 0;
  bool estadoVideo = false;
  Widget dinamico;

  @override
  void iniState() {
    super.initState();
    escutador = () {
      setState(() {});
    };
  }

  void Videozar() {
    setState(() {
      estadoVideo = !estadoVideo;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('vasos'),
      ),
      backgroundColor: Color(0xFFFFEAEC),
      body: _body(context),
    );
  }

  _body(context) {
    return Stack(children: <Widget>[
      _back(context),
      _video(context),
    ]);
  }
  _videoAtualizador(String link){
    if (playerController == null){
      playerController = VideoPlayerController.network(
          'https://r6---sn-bg07dnze.googlevideo.com/videoplayback?expire=1574478046&ei=fkzYXYy7GIW5hAfp0qywAg&ip=185.27.134.50&id=o-AGhgfT6YwDvMwBVV5Qw5kCrdpm1HpctCscn4u8MWjMdS&itag=22&source=youtube&requiressl=yes&mime=video%2Fmp4&ratebypass=yes&dur=812.257&lmt=1545030648975252&fvip=4&fexp=23842630&c=WEB&txp=5432432&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cmime%2Cratebypass%2Cdur%2Clmt&sig=ALgxI2wwRQIgSHT-SuIFp7APuHuKnhWxa2R9XZww09LRLsU7f3ay_qMCIQC6HYIkKInGSPmsPpwh_BhnpvSpK98yLXcnOI-E4gJ0tw%3D%3D&redirect_counter=1&rm=sn-aiges67z&req_id=b7666c85898ba3ee&cms_redirect=yes&ipbypass=yes&mip=131.255.233.227&mm=31&mn=sn-bg07dnze&ms=au&mt=1574457412&mv=m&mvi=5&pl=24&lsparams=ipbypass,mip,mm,mn,ms,mv,mvi,pl&lsig=AHylml4wRgIhAN1I5hn_Dc8rW_X119UkYDyM8cyfAjBK05lZauVvMyvtAiEA-JJ9ZC9UBtvpFUdM50Eb3w0_M4FY92yc7F8UxlCAm4U='
      )
        ..addListener(escutador)
        ..initialize()
        ..play()
        ..setVolume(100);
    }
    return playerController;
  }
  _videoControladorFront(){
     return Row(
       crossAxisAlignment: CrossAxisAlignment.center,
       mainAxisAlignment: MainAxisAlignment.end,
       children: <Widget>[
         Icon(Icons.navigate_before),
         Icon(Icons.pause),
         Icon(Icons.navigate_next)
       ],
     );
  }
  _video(context) {
    return GestureDetector(
      child: Visibility(
        child: SizedBox.expand(
          child: Container(
            padding: EdgeInsets.all(widget.maior * 0.05),
            child: GestureDetector(
              child: Stack(
                children: <Widget>[
                  _videoControladorFront(),
                  Container(
                    child: VideoPlayer(
                      _videoAtualizador('z')
                    ),
                    color: Colors.blue,
                  ),
                ],
              ),
              onTap: () {
                print('tap');
              },
            ),
            color: Colors.black54,
          ),
        ),
        visible: estadoVideo,
      ),
      onTap: () {
        Videozar();
      },
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
              color: Color(0xFFE63D4E),
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
                        widget.maior, widget.menor, widget.vasos[indice]));
              },
            ),
            SizedBox(
              width: 20,
            ),
            RaisedButton(
              color: Color(0xFFE63D4E),
              child: Icon(Icons.ondemand_video),
              onPressed: () {
                Videozar();
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
