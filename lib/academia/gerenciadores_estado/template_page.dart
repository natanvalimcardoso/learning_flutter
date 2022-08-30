import 'package:currency_text_input_formatter/currency_text_input_formatter.dart';
import 'package:flutter/material.dart';

import 'widgets/imc_gauge.dart';

class TemplatePage extends StatefulWidget {
  const TemplatePage({Key? key}) : super(key: key);

  @override
  State<TemplatePage> createState() => _TemplatePageState();
}

class _TemplatePageState extends State<TemplatePage> {
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  //* Sempre que tiver controller usamos o dispose para limpar a memoria do objeto quando a tela for fechada
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
        title: const Text('SetState'),
      ),
      body: SingleChildScrollView(
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
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Calcular IMC'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
