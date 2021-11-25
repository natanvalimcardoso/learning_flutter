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
    body: const SingleChildScrollView()
    );
  }
}
