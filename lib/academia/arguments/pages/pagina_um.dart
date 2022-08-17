import 'package:flutter/material.dart';

class PaginaUm extends StatelessWidget {
  const PaginaUm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {},
              child: const Text('Enviar dados'),
            ),
          )
        ],
      ),
    );
  }
}
