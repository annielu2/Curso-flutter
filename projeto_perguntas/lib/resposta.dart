import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final String text;
  final void Function() quandoSelecionado;

  Resposta(this.text, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Colors.blueAccent),
            ),
            child: Text(
              text,
              style: const TextStyle(fontSize: 15),
            ),
            onPressed: quandoSelecionado
        )
    );
  }
}
