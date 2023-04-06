import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() quandoreiniciarQuestionario;

  const Resultado(this.pontuacao, this.quandoreiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return "Parabéns!";
    } else if (pontuacao < 12) {
      return "Você é um  ET!";
    } else if (pontuacao < 16) {
      return "Impressionante";
    } else {
      return "Nível Jedi";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_constructors
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(fraseResultado, style: TextStyle(fontSize: 28)),
        ),

        TextButton(onPressed: quandoreiniciarQuestionario, 
        style: ButtonStyle(iconColor: MaterialStateProperty.all<Color>(Colors.blueAccent)),
        child: Text('Reiniciar?'))
      ]
    );
  }
}
