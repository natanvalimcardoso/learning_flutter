import 'dart:async';
import 'dart:math';

import 'package:learn_flutter/academia/gerenciadores_estado/bloc_pattern/bloc/imc_state.dart';

class ImcBlocPatternController {
  final _imcStreamController = StreamController<ImcState>.broadcast()..add(ImcState(imc: 0)); 
  Stream<ImcState> get imcOut => _imcStreamController.stream;

  Future<void> calcularImc({required double peso, required double altura}) async{
    _imcStreamController.add(ImcStateLoading());
    await Future.delayed(const Duration(seconds: 1));
    final imc = peso / pow(altura, 2);
    throw Exception();
    _imcStreamController.add(ImcState(imc: imc));
  }


  void dispose() {
    _imcStreamController.close();
  }
}
