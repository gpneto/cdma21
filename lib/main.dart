import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<String> _products = ['Computador'];
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text('CDM - Tarefa A2.1'))),
        body: SingleChildScrollView(
          child: Column(children: [
          Container(
              margin: EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: myController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Digite aqui',
                    ),
                  ),
                  Center(
                    child: RaisedButton(
                        onPressed: () {
                          setState(() {
                            _products.add(myController.text);
                          });
                        },
                        child: Text(
                          'Adicionar Valor',
                          style: TextStyle(fontSize: 22),
                        )),
                  ),
                ],
              )),
          Column(
                children: _products
                    .map((element) => Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        child: Text(
                          element,
                          style: TextStyle(fontSize: 18),
                        ),
                        padding: EdgeInsets.all(5.0),
                      )
                    ],
                  ),
                ))
                    .toList()),
        ]),
      ),
      ),
    );
  }
}