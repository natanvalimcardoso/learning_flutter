import 'dart:async';

Future<void> main() async {
  final streamController = StreamController<int>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;

  outStream
      .skip(1)
      .where((numero) => numero % 2 == 0)
      .map((numero) => 'O valor par enviado é $numero')
      .listen((numeroConvertido) => print(numeroConvertido));

  var numeros = List.generate(20, (index) => index);

  for (var numero in numeros) {
    inStream.add(numero);
    await Future.delayed(const Duration(milliseconds: 500));
  }

  await streamController.close(); // depois
}
