import 'package:flutter/material.dart';

import '../events/exercicio_event.dart';

class CountDownWidget extends StatelessWidget {
  final ExercicioEvent event;

  const CountDownWidget({Key? key, required this.event}) : super(key: key);

  getColor(int now, int limit) {
    double factor = now / limit;
    if (factor < 0.2) {
      return Colors.cyan;
    } else if (factor > 0.1 && factor <= 0.2) {
      return Colors.yellow[400];
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    final treino = event.treino;
    return Stack(
      children: [
        SizedBox(
          width: 250,
          height: 250,
          child: CircularProgressIndicator(
            value: 1 - (event.now / treino.seconds),
            strokeWidth: 15,
            backgroundColor: getColor(event.now, treino.seconds),
          ),
        ),
        Text(
          event.now.toString(),
          style: const TextStyle(fontSize: 70),
        ),
        Positioned(
          bottom: 60,
          child: Text(
            treino.name.toString(),
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ],
    );
  }
}
