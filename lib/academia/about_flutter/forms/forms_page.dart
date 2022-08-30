import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  final formKey = GlobalKey<FormState>();
  final formKeyDrop = GlobalKey<FormState>();

  List valores = [
    'Categoria 1',
    'Categoria 2',
    'Categoria 3',
    'Categoria 4',
  ];

  String resultado = '';

  final nameEC = TextEditingController();

  @override
  void dispose() {
    nameEC.dispose(); //* Sempre é importante fazer o descarte dos controladores que você criou
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
      ),
      body: Form(
        key: formKey,
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextFormField(
                  controller: nameEC,
                  maxLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.black),
                    ),
                    labelText: 'Nome Completo',
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo não preenchido';
                    }
                    return null;
                  },
                ),
              ),
              DropdownButtonFormField(
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Dropdown não preenchido';
                  }
                },
                items: valores.map((element) {
                  return DropdownMenuItem(
                    value: element.toString(),
                    child: Text(element),
                  );
                }).toList(),
                onChanged: (String? value) {
                  setState(() {
                    if (value != null) {
                      resultado = value;
                    }
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  var formValid = formKey.currentState?.validate() ?? false;
                  var message = 'Formulário inválido';
                  if (formValid) {
                    message = 'O dado ${nameEC.text} foi salvo com sucesso';
                  }
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(message),
                    ),
                  );
                },
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
