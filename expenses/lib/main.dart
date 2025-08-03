import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

main() => runApp(ExpensesApp());

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transations = [
    Transaction(id: 't1',
                title: 'Novo tênis',
                value: 310,
                date: DateTime.now()),
    Transaction(id: 't2',
                title: 'Conta de luz',
                value: 211,
                date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Despesas Pessoais')),
                    body: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          child: Card(
                            color: Colors.blue,
                            child: Text('Gráfico'),
                            elevation: 5,
                          ),
                        ),
                        Card(
                          child: Text('Lista de transações'),
                        )
                      ],
                    )
                  );
  }
}