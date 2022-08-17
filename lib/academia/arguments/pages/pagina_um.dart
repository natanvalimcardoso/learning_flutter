import 'package:flutter/material.dart';

class PaginaUm extends StatelessWidget {
  PaginaUm({Key? key}) : super(key: key);
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _textEditingController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed(
                  '/paginaDois',
                  arguments: _textEditingController.text,
                );
              },
              child: const Text('Enviar dados'),
            ),
          )
        ],
      ),
    );
  }
}
