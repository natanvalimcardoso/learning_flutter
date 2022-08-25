import 'package:learn_flutter/other/streambuilder/events/end_event.dart';
import 'package:learn_flutter/other/streambuilder/events/exercicio_event.dart';
import 'package:learn_flutter/other/streambuilder/events/start_event.dart';
import 'package:learn_flutter/other/streambuilder/treino.dart';
import 'package:learn_flutter/other/streambuilder/treino_event.dart';

class TreinoController {
  List<Treino> treinoTimers;
  TreinoController({required this.treinoTimers});

  Stream<TreinoEvent> start() async* {
    // O async* vai denominar que é uma função generator, o return so retorna 1 coisa, e o yield não mata a execução
    yield StartEvent();

    for (Treino treino in treinoTimers) {
      for (int seconds = treino.seconds; seconds >= 0; seconds--) {
        await Future.delayed(const Duration(seconds: 1));
        yield ExercicioEvent(
            treino: treino,
            now:
                seconds); //Vou mandar lá para o consumidor, ou seja quem ta recebendos o dados dos nossos eventos.
      }
    }

    yield EndEvent();
  }
}
