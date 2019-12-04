
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oriabana_project/custons/itens.dart';
import 'package:oriabana_project/paginas/about.dart';
import 'package:oriabana_project/paginas/vasos.dart';
import 'package:oriabana_project/utils/nav.dart';

List<String> generico = [
  ' Separe um pedaço de esponja floral e um pedaço de plástico maleável .',
  ' Coloque a esponja floral no centro do pedaço de plástico.',
  ' Coloque tudo dentro da caixa .'
];

VasosIndexados caixaEstrelada = VasosIndexados(
  'caixaestrelada',
  'assets/vaso1.jpg',
  'Vasinho de luz',
  'Em 2007 iniciamos a utilização do vasinho de luz para confeccionarmos mini arranjos florais, pois na ocasião precisávamos de um recipiente barato e sustentável para nossas atividades, daí surgiu a ideia deste vaso de origami, que pode ser feito com qualquer papel e em qualquer lugar.  Este projeto recebeu o nome de Vasinho de Luz em 2017, porque o nome dos arranjos que distribuímos se chama flor de luz, por esse motivo nossa amiga Nelma Maria apelidou vasinho de luz.',
  'https://www.youtube.com/watch?v=TnTyzkcY2QY',
    [//Caixa estrelada
      ' Dobre um triangulo equilátero do ponto X ao ponto Y. Caso o seu papel seja quadrado, pule para a etapa 3',
      ' Remova a parte restante que ficou fora do triangulo',
      ' Leve X até Y em seguida desdobre o papel e vire para o lado oposto.',
      ' Dobre no meio do quadrado do ponto X ao ponto Y',
      ' Repita no eixo oposto e mantenha dobrado',
      ' Abra um pouco no meio e segure nos pontos X e Y, em seguida empurre.',
      ' Dobre a ponta X até o ponto Y. Use a linha do meio como referência.',
      ' Dobre a ponta X até Y em ambos lados usando a dobra como referência',
      ' Levante a parte de cima e empurre a parte dobrada anteriormente.',
      ' Dobre a parte restante para dentro.',
      ' Dobre Repita isso para a outra ponta .',
      ' Vire e repita nas pontas restantes.',
      ' Dobre para trás',
      ' Dobre e desdobre a parte indicada levando X até Y .',
      ' Leve Y até X dobrando na parte indicada.',
      ' Repita isso para as outras pontas.',
      ' Abra a caixa dobrando as partes dobradas de dentro para fora.',
      ' Caixa pronta!',
//Oasis estrelada
      ' Separe um pedaço de esponja floral e um pedaço de plástico maleável .',
      ' Coloque a esponja floral no centro do pedaço de plástico.',
      ' Coloque tudo dentro da caixa .',
    ]
);
VasosIndexados vasoChino = VasosIndexados(
  'vaso_estrelado',
  'assets/vaso3.jpg',
  'Vaso Estrelado',
  'Este vaso é um projeto que uma paciente com câncer de mama desenvolveu a partir do vasinho de luz e fez durante toda a sua quimioterapia vários vasinhos e outras pessoas confeccionavam os arranjos e levavam pra sociedade.',
  'https://www.youtube.com/watch?v=x8LdSw8mG1U&t=8s',
    [' Dobre um triangulo equilátero do ponto X ao ponto Y. Caso o seu papel seja quadrado, pule para a etapa 3',
      ' Remova a parte restante que ficou fora do triangulo',
      ' Leve X até Y em seguida desdobre o papel e vire para o lado oposto.',
      ' Dobre no meio do quadrado do ponto X ao ponto Y',
      ' Repita no eixo oposto e mantenha dobrado',
      ' Abra um pouco no meio e segure nos pontos X e Y, em seguida empurre.',
      ' Dobre a ponta X até o ponto Y. Use a linha do meio como referência.',
      ' Dobre na marca indicada em ambos os lados levando X até Y. ',
      ' Dobre na marca indicada em ambos os lados puxando a ponta X até Y. ',
      ' Dobre e desdobre a marca indicada usando a ponta X .',
      ' Traga a ponta X para dentro da dobra X.',
      ' Leve X até Y .',
      ' Dobre e desdobre a marca indicada levando X até Y. ',
      ' Leve X até Y enquando empurra Z para dentro da dobra .',
      ' Agora faça o mesmo para todas as outras pontas',
      ' Dobre o restante das pontas para dentro, deixando todos os lados semelhantes.',
      ' Use os dedos para empurrar as laterais até que fiquem totalmente retas relativas a dobras.',
      ' Vaso Ponto!.',
//Oasis estrelado
      ' Separe um pedaço de esponja floral e um pedaço de plástico maleável .',
      ' Coloque a esponja floral no centro do pedaço de plástico.',
      ' Coloque tudo dentro do vaso .',
    ]
);
VasosIndexados caixaQuadrada = VasosIndexados(
  'caixaquadrada',
  'assets/vaso4.jpg',
  'Caixinha',
  'Esta caixinha é um projeto que utilizamos para confeccionarmos mini arranjos florais, considerando que pode ser feito em qualquer lugar e  qualquer papel e fazer uma pessoa feliz a  qualquer momento ao receber uma flor.',
  'https://www.youtube.com/watch?v=KVo9x_3sjs0',
  [// caixa quadrada
    ' Dobre um triangulo equilátero do ponto X ao ponto Y. Caso o seu papel seja quadrado, pule para a etapa 3',
    ' Remova a parte restante que ficou fora do triangulo',
    ' Leve X até Y em seguida desdobre o papel e vire para o lado oposto.',
    ' Dobre no meio do quadrado do ponto X ao ponto Y',
    ' Repita no eixo oposto e mantenha dobrado',
    ' Abra um pouco no meio e segure nos pontos X e Y, em seguida empurre.',
    ' Dobre na linha indicada levando a ponta Y ao ponto X e faça o mesmo do outro lado do quadrado',
    ' Traga a primeira ponta(X) até o ponto Y e faça o mesmo do outro lado do quadrado',
    ' Dobre na linha indicada levando a primeira ponta X até o ponto Y faça o mesmo do lado oposto',
    ' Leve a ponta X a ponta Y dobrando na linha indicada, que também é o limite da geometria abaixo. ',
    ' Leve a ponta X a ponta Y dobrando na linha indicada. ',
    ' Leve a ponta X para baixo até chegar ao ponto Y dobrando na linha indicada. ',
    ' Coloque a parte dobrada para dentro.',
    ' Faça isso no lado oposto',
    ' Volte para o lado do início.',
    ' Levante a ponta X dobrando no limite indicado que são as pontas laterais.',
    ' Leve a ponta X para baixo até chegar ao ponto Y. ',
    ' Jogue tudo isso para dentro.',
        ' Levante a ponta X dobrando na linha indicada marcando os limites do vaso.',
        ' Abra a caixa dobrando as partes dobradas de dentro para fora.',
    ' Caixa Pronta!.',

//Oasis estrelada
      ' Separe um pedaço de esponja floral e um pedaço de plástico maleável .',
      ' Coloque a esponja floral no centro do pedaço de plástico.',
      ' Coloque tudo dentro da caixa .',
    ]
);


VasosIndexados caixaEstreladaEsponja = VasosIndexados(
  'caixaestrelada_esponja',
  'assets/vasoe1.jpg',
  'Vasinho de luz',
  'Em 2007 iniciamos a utilização do vasinho de luz para confeccionarmos mini arranjos florais, pois na ocasião precisávamos de um recipiente barato e sustentável para nossas atividades, daí surgiu a ideia deste vaso de origami, que pode ser feito com qualquer papel e em qualquer lugar.  Este projeto recebeu o nome de Vasinho de Luz em 2017, porque o nome dos arranjos que distribuímos se chama flor de luz, por esse motivo nossa amiga Nelma Maria apelidou vasinho de luz.',
  'https://www.youtube.com/watch?v=S6WXIyFlAwo',
  generico,
);
VasosIndexados vasoChinoEsponja = VasosIndexados(
  'vaso_estrelado_esponja',
  'assets/vasoe3.jpg',
  'Vaso Estrelado',
  'Este vaso é um projeto que uma paciente com câncer de mama desenvolveu a partir do vasinho de luz e fez durante toda a sua quimioterapia vários vasinhos e outras pessoas confeccionavam os arranjos e levavam pra sociedade.',
  'https://www.youtube.com/watch?v=MNg4i3LQ1OY',
  generico,
);
VasosIndexados caixaquadradaEsponja = VasosIndexados(
  'caixaquadrada_esponja',
  'assets/vasoe2.jpg',
  'Caixinha',
  'Esta caixinha é um projeto que utilizamos para confeccionarmos mini arranjos florais, considerando que pode ser feito em qualquer lugar e  qualquer papel e fazer uma pessoa feliz a  qualquer momento ao receber uma flor.',
  'https://www.youtube.com/watch?v=u3ZTxkWvymo',
  generico,
);
List<VasosIndexados> vasos = [caixaEstrelada, vasoChino, caixaQuadrada];
List<VasosIndexados> esponja = [caixaEstreladaEsponja,vasoChinoEsponja,caixaquadradaEsponja];

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Oribana',
            style: TextStyle(
              fontSize: 26,
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
    return Stack(
      children: <Widget>[
        Center(
          child: Image.asset('assets/background.jpg',
            width:  consulta.width,
            height: consulta.height,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(consulta.width * 0.2, consulta.height * 0.2, 0, 0),
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Color(0xFFFFF7F9),
              borderRadius: BorderRadius.all(Radius.circular(5))),
          child: Wrap(
            direction: Axis.vertical,
            children: <Widget>[
              SizedBox(
                width: maior * 0.2,
                height: 0,
              ),botaoRed(context, 'Vasos', onpressed: () => passaPagina(context, Vasos(maior,menor,vasos,Color(0xFFE63D4E),'Vasos')),largura: maior * 0.18, altura: maior *0.078),
              SizedBox(height: maior*0.02,),
              botaoRed(context, 'Esponja',onpressed: () => passaPagina(context, Vasos(maior,menor,esponja,Color(0xFFc89ae3), 'Esponjas')),largura: maior * 0.18, altura: maior *0.078),
              SizedBox(height: maior*0.02,),
              botaoRed(context, 'Sobre', onpressed: () => panGina(context, Sobre(maior, menor)), largura: maior * 0.18, altura: maior *0.078)
            ],
          ),
          constraints: BoxConstraints(
            minHeight: 0,
          ),
        ),
      ],
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
  void panGina(BuildContext context, Widget pagina) async{
    String a = await push(context, pagina);
  }
  void passaPagina(BuildContext context, Widget pagina) async{
    String a = await pushReplacement(context, pagina);
  }
}
