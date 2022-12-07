import 'package:flutter/material.dart';

class Snippers extends StatefulWidget {
  const Snippers({Key? key}) : super(key: key);

  @override
  State<Snippers> createState() => _SnippersState();
}

class _SnippersState extends State<Snippers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Container(
        child: RichText(
          text: const TextSpan(
            // style geral
            style: TextStyle(color: Colors.pink, fontSize: 20),
            children: <TextSpan>[
              //style do texto individual
              TextSpan(
                text: 'Titulo 1',
                style: TextStyle(color: Colors.blue),
              ),
              TextSpan(
                text: 'Titulo 1',
                style: TextStyle(color: Colors.red),
              ),
              TextSpan(
                text: 'Titulo 1',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
