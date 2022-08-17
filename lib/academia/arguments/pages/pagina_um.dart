import 'package:flutter/material.dart';

class PaginaUm extends StatelessWidget {
  PaginaUm({Key? key}) : super(key: key);
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Center(
            child: Column(
              children: [
                TextField(
                  controller: _textEditingController,
                ),
                ElevatedButton(
                  onPressed: () {
                    
                  },
                  child: const Text('Enviar dados'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
