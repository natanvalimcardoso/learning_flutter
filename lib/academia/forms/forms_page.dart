import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

String texto = '';

class _FormsPageState extends State<FormsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
      ),
      body: Form(
        child: Column(
          children: [
            TextField(
              onChanged: (String value) {
                setState(
                  () {
                    texto = value;
                  },
                );
              },
            ),
            Text('O texto digitado é: $texto')
          ],
        ),
      ),
    );
  }
}
