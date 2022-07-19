import 'package:flutter/material.dart';
import 'package:learn_flutter/myapp/list_with_stream/events/list_event.dart';
import 'package:learn_flutter/myapp/list_with_stream/events/ready_event.dart';

import '../controllers/list_controller.dart';

class ListHomePage extends StatefulWidget {
  ListHomePage({Key? key}) : super(key: key);

  @override
  State<ListHomePage> createState() => _ListHomePageState();
}

class _ListHomePageState extends State<ListHomePage> {
  late final Stream<ListEvent> listStream;
  late final ListController controller;
  int _selectedIndex = 1;
  
  start() {
    //Aqui é o que acontece quando o botão é clicado e o treino começa
    controller = ListController(index: []);
    
    setState(() {
      listStream = controller.start(); //aqui ele vai retornar o nosso stream
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista do Natan'),
      ),
      body: Column(
        children: [
          Expanded(
            child: StreamBuilder(
              stream: listStream,
              builder: (context, AsyncSnapshot<ListEvent> snapshot) {
                ListEvent? event = snapshot.data;
                if (snapshot.hasError) {
                  return const Text('Erro ao carregar a lista');
                } else if (event is ReadyEvent ) {
                  return ListView.builder(
                    itemCount: _selectedIndex,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text('Item $index'),
                      );
                    },
                  );
                } else {
                  return const Text('Lista vazia');
                }
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _selectedIndex++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
