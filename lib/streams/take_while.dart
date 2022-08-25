Future<void> main() async {
  final interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.takeWhile((int numero) => numero < 18);

  await for (var element in stream) {
    print(element);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
