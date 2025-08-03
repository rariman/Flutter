

import 'package:flutter/material.dart';
import 'resultado.dart';
import 'questionario.dart';

main() {
    runApp(PerguntaApp());
}

class PerguntaAppState extends State<PerguntaApp>{
    var perguntaSelecionada = 0;
    var _pontuacaoTotal = 0;
    final _perguntas = const [
        {
            'texto':  'Qual a sua cor favorita?',
            'respostas': [
                {'texto': 'Preto',    'nota': 10}, 
                {'texto': 'Vermelho', 'nota': 5}, 
                {'texto': 'Verde',    'nota': 3}, 
                {'texto': 'Branco',   'nota': 1}
                ]
        },
        {
            'texto': 'Qual é o seu animal favorito?',
            'respostas': [
                {'texto':'Coelho',   'nota': 10 },
                {'texto':'Cobra',    'nota': 5  },
                {'texto':'Elefante', 'nota': 3  },
                {'texto':'Leão',     'nota': 1  },
            ]
        },
        {
            'texto': 'Qual é o seu instrutor favorito?',
            'respostas': [
                {'texto': 'Maria', 'nota':  10 },  
                {'texto': 'João',  'nota':  5  },
                {'texto': 'Leo',   'nota':  3  },
                {'texto': 'Pedro', 'nota':  1  },
            ]
        }                    
    ];

    void responder(int pontuacao) {
        if (temPerguntaSelecionada)
        {
            setState(() {
                perguntaSelecionada++;
                _pontuacaoTotal += pontuacao;
            });
        }

        print(_pontuacaoTotal);
    }

    void _reiniciarQuestionario() {
        setState(() {
          perguntaSelecionada = 0;
          _pontuacaoTotal = 0;
        });
    }

    bool get temPerguntaSelecionada {
        return perguntaSelecionada < _perguntas.length;
    }

    @override
    Widget build(BuildContext context) {       
        return new MaterialApp(
                home: Scaffold(
                appBar: AppBar(
                    title: Text("Perguntas"),
                ),
                body:  temPerguntaSelecionada ? 
                        Questionario(perguntas: _perguntas, perguntaSelecionada: perguntaSelecionada, responder: responder) : 
                        Resultado('Parabéns', _pontuacaoTotal, _reiniciarQuestionario),
            )
        );
    }
}

class PerguntaApp extends StatefulWidget {
  @override
  PerguntaAppState createState() {
    return PerguntaAppState();
  }   
}