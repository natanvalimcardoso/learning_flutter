import 'package:learn_flutter/other/streambuilder/treino.dart';
import 'package:learn_flutter/other/streambuilder/treino_event.dart';

class ExercicioEvent implements TreinoEvent {
  Treino treino; // treino que está sendo executado
  int now; // timer atual
  ExercicioEvent({required this.treino, required this.now});
}
