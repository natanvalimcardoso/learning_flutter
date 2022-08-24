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
                    return SimpleDialog(
                      title: const Text('Seja bem-vindo'),
                      contentPadding: const EdgeInsets.all(20),
                      children: [
                        const Text('Você está logado'),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('OK'),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
            ElevatedButton(
              child: const Text('AlertDialog'),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Você deseja continuar?'),
                      content: SingleChildScrollView(
                        child: ListBody(
                          children: const [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text('Caso aceite não poderá retornar mais'),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text('Cancelar'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text('Continuar'),
                        )
                      ],
                    );
                  },
                );
              },
            ),

            //* Importante

            ElevatedButton(
              child: const Text('Time Picker'),
              onPressed: () async {
                final selectedTime = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                print(selectedTime);
              },
            ),
            ElevatedButton(
              child: const Text('Date Picker'),
              onPressed: () async {
              final dataCompleta =  await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime(2025),
                );
                print('A data selecionada foi: $dataCompleta');
              },
            ),
          ],
        ),
      ),
    );
  }
}
