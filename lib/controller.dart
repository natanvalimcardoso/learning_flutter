import 'package:flutter/material.dart';

class Controller extends StatefulWidget {
  const Controller({Key? key}) : super(key: key);

  @override
  _ControllerState createState() => _ControllerState();
}

class _ControllerState extends State<Controller> {
  final _pesoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: (TextField(
              controller: _pesoController,
              keyboardType: TextInputType.number,
              // ignore: prefer_const_constructors
              decoration: InputDecoration(
                labelText: 'Peso',
                hintText: "Digite o seu peso",
                border: OutlineInputBorder(),
              ))),
        ),
      ),
    );
  }
}
