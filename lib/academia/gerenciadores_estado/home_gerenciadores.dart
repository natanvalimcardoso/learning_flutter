import 'package:flutter/material.dart';

class HomeGerenciadores extends StatelessWidget {
  const HomeGerenciadores({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I.M.C'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text('SetState'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('ValueNotifier'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('ChangeNotifier'),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Bloc Patterns (Streams)'),
          ),
        ],
      ),
    );
  }
}
