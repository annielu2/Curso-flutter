import 'questao.dart';
import 'resposta.dart';

import 'package:flutter/material.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) responder;

  Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.responder});

  bool get temPerguntaSelecionada {
      return perguntaSelecionada < perguntas.length;
  }


  @override
  Widget build(BuildContext context) {
    List<Widget> widgets = [];

    List<String>? resp = null;

    if (temPerguntaSelecionada) {
      List<Map<String, Object>>? resp =
          perguntas[perguntaSelecionada]['respostas'] as List<Map<String, Object>>;
       widgets = resp.map((e) => Resposta(e['texto'].toString(), () => responder(int.parse(e['pontuacao'].toString())))).toList();
    } 
    return Column(
                children: <Widget>[
                  Questao(perguntas[perguntaSelecionada]['texto'].toString()),
                  ...widgets,
                ],
              );
  }
}
