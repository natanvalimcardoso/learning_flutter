import 'package:flutter/material.dart';
import 'package:learn_flutter/academia/dialogs/dialog_widgets/dialog_custom.dart';

class HomeDialogPage extends StatelessWidget {
  const HomeDialogPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Dialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return DialogCustom(context); //* Dialog totalmente customizado
                  },
                );
              },
            ),
            ElevatedButton(
              child: const Text('SimpleDialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const SimpleDialog(
                      title: Text('Seja bem-vindo'),
                    );
                  },
                );
              },
            ),
            ElevatedButton(
              child: const Text('AlertDialog'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: const Text('Time Picker'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            ElevatedButton(
              child: const Text('Date Picker'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
