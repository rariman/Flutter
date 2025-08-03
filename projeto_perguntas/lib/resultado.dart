import 'package:flutter/material.dart';

class Resultado extends StatelessWidget
{
  final String _texto;
  final int    _pontuacaoTotal;
  final void Function() reiniciar;

  Resultado(this._texto, this._pontuacaoTotal, this.reiniciar);

  String get fraseResultado {
    if (this._pontuacaoTotal < 8) {
      return 'Parabéns';
    }
    else if (this._pontuacaoTotal < 12) {
      return 'Você é bom';
    }
    else if (this._pontuacaoTotal < 16) {
      return 'Impressionante';
    } 
    else {
      return 'Nível Jedi';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column( 
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>
      [ 
        Center(
                child: Text(fraseResultado, 
                            style: TextStyle(fontSize: 28)),
              ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white
                  ),
          onPressed: reiniciar,
          child: Text('Reiniciar?', style: TextStyle(fontSize: 18)),
        )
      ]
    );
  }
}