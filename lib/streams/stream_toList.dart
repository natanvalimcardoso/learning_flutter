//* Caso eu queira resgatar todos dados de uma vez só sem ter que ficar recebendo um por um com forIn

Future<void> main() async {
  const interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5);

  final data = await stream.toList();

  print(data);
}

int callback(int value) {
  return (value + 1) * 2;
}
