import 'package:flutter/material.dart';

import '../events/exercicio_event.dart';

class CountDownWidget extends StatelessWidget {
  final ExercicioEvent event;

  const CountDownWidget({Key? key, required this.event}) : super(key: key);

  getColor(int now, int limit) {
    double factor = now / limit;
    if (factor < 0.2) {
      return Colors.red;
    } else if (factor > 0.1 && factor <= 0.2) {
      return Colors.yellow[400];
    } else {
      return Colors.cyan;
    }
  }

  @override
  Widget build(BuildContext context) {
    final treino = event.treino;
    return Stack(
      children: [
        Center(
          child: SizedBox(
            width: 250,
            height: 250,
            child: CircularProgressIndicator(
              value: 1 - (event.now / treino.seconds),
              strokeWidth: 15,
              backgroundColor: Colors.grey.shade300,
              color: getColor(event.now, treino.seconds),
            ),
          ),
        ),
        Center(
          child: Text(
            event.now.toString(),
            style: const TextStyle(fontSize: 70),
          ),
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 100),
            child: Text(
              treino.name.toString(),
              style: const TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
