import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  final _valorController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Teste'),
          centerTitle: true,
          backgroundColor: Colors.green,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.refresh),
              onPressed: () {
                _valorController.clear();
              },
            )
          ],
        ),
        body: Container(
          padding: const EdgeInsets.all(16),
          child: Column(children: <Widget>[
            TextField(
              controller: _valorController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Digite um valor',
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (_valorController.text.isNotEmpty) {
                    final int valor = int.parse(_valorController.text);
                    // ignore: avoid_print
                    print(valor); //Serviu para mostrar no console de debug
                  }
                },
                child: const Text('Enviar'))
          ]),
        ));
  }
}
