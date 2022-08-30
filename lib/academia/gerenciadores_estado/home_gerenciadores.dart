import 'package:flutter/material.dart';

import 'setState/set_state_page.dart';

class HomeGerenciadores extends StatelessWidget {
  const HomeGerenciadores({Key? key}) : super(key: key);

  void _goToPage({required BuildContext context, required Widget page}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('I.M.C'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: ()=> _goToPage(context: context, page: const SetStatePage()),
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
      ),
    );
  }
}
