import 'package:flutter/material.dart';
import 'questao.dart';
import 'resposta.dart';


class Questionario extends StatelessWidget
{
  final int perguntaSelecionada;
  final List<Map<String, Object>> perguntas;
  final void Function(int) responder;

  const Questionario({
    required this.perguntas, 
    required this.perguntaSelecionada, 
    required this.responder
    });

  bool get temPerguntaSelecionada {
      return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    
    List<Map<String, Object>> repostas = temPerguntaSelecionada ?  perguntas[perguntaSelecionada].cast()['respostas'] : [];

    return Column(
              children: <Widget>[
                  Questao(perguntas[perguntaSelecionada]['texto'].toString()),
                  ...repostas.map((resp) => Resposta(resp['texto'] as String, () => responder(int.parse(resp['nota'].toString())))).toList(), //Adiciona todos os elementos das lista                         
              ] 
          );
  }
}