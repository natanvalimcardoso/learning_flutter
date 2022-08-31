import 'dart:math';

import 'package:flutter/cupertino.dart';

class ChangeNotifierController extends ChangeNotifier {
  var imc = 0.0;

  Future<void> calcularImc({required double peso, required double altura}) async {
    imc = 0;
    notifyListeners();
    await Future.delayed(Duration(seconds: 1));
    imc = peso / pow(altura, 2);
    notifyListeners();
    //* Tem 2 notifyListeners pois o primeiro é para zerar o imc e o segundo é para atualizar o imc
  }
}
