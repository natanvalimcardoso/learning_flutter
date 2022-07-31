Future<void> main() async {
  const interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.asBroadcastStream();
  
  stream = stream.where((numero) => numero % 6 == 0).take(3);

  stream.listen((numero) {
    print(numero);
  });
  stream.listen((numero) {
    print(numero);
  });
}

int callback(int value) {
  return (value + 1) * 2;
}