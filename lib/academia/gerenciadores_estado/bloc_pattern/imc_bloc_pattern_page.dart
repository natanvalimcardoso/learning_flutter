import 'dart:math';

import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/imc_gauge.dart';



class ImcBlocPatternPage extends StatefulWidget {
  const ImcBlocPatternPage({Key? key}) : super(key: key);

  @override
  State<ImcBlocPatternPage> createState() => _ImcBlocPatternPageState();
}

class _ImcBlocPatternPageState extends State<ImcBlocPatternPage> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _weightController.dispose();
    _heightController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloc Patterns'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const ImcGauge(
                  imc: 0,
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _weightController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'peso',
                  ),
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                        locale: 'pt_BR', symbol: '', turnOffGrouping: true, decimalDigits: 2)
                  ],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Peso obrigatório';
                    }
                  },
                ),
                TextFormField(
                  controller: _heightController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: 'Altura',
                  ),
                  inputFormatters: [
                    CurrencyTextInputFormatter(
                        locale: 'pt_BR', symbol: '', turnOffGrouping: true, decimalDigits: 2)
                  ],
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Altura obrigatória';
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;

                    if (formValid) {
                      var formatter = NumberFormat.simpleCurrency(
                        locale: 'pt_BR',
                        decimalDigits: 2,
                      );
                      double peso = formatter.parse(_weightController.text) as double;
                      double altura = formatter.parse(_heightController.text) as double;

                      // _calcularImc(peso, altura);
                    }
                  },
                  child: const Text('Calcular IMC'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
