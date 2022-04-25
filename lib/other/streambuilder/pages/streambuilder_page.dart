import 'package:flutter/material.dart';
import 'package:learn_flutter/other/streambuilder/controllers/treino_controller.dart';
import 'package:learn_flutter/other/streambuilder/events/end_event.dart';
import 'package:learn_flutter/other/streambuilder/events/exercicio_event.dart';
import 'package:learn_flutter/other/streambuilder/events/start_event.dart';
import 'package:learn_flutter/other/streambuilder/treino.dart';
import 'package:learn_flutter/other/streambuilder/widget/count_down_widget.dart';

import '../treino_event.dart';

class StreamBuilderPage extends StatefulWidget {
  const StreamBuilderPage({Key? key}) : super(key: key);

  @override
  State<StreamBuilderPage> createState() => _StreamBuilderPageState();
}

class _StreamBuilderPageState extends State<StreamBuilderPage> {
  bool showStartButton = true;

  late final TreinoController controller;

  late final Stream<TreinoEvent> treinoStream;// Serve para receber os eventos do stream

  start() {
    //Aqui é o que acontece quando o botão é clicado e o treino começa
    controller = TreinoController(treinoTimers: [
      Treino(name: 'Abdominal', seconds: 10),
      Treino(name: 'Descanso', seconds: 5),
      Treino(name: 'Prancha', seconds: 10),
    ]);
    setState(() {
      treinoStream = controller.start(); //aqui ele vai retornar o nosso stream
      showStartButton = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: showStartButton
            ? ElevatedButton(
                child: const Text('Iniciar treino'),
                onPressed: start,
              )
            : StreamBuilder(
                stream: treinoStream, //A stream é o stream que está sendo retornado pelo controller
                builder: (context, AsyncSnapshot<TreinoEvent> snapshot) {
                  TreinoEvent? event = snapshot.data;
                  if (snapshot.hasError) {
                    return const Text('Erro ao carregar o treino');
                  } else if (event is StartEvent) {
                    return const Text('Iniciando o treino...');
                  } else if (event is EndEvent) {
                    return const Text('Treino Finalizado');
                  } else if (event is ExercicioEvent) {
                    return CountDownWidget(event: event);
                  }
                  return Container();
                },
              ),
      ),
    );
  }
}
