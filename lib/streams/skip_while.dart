Future<void> main() async {
  const interval = Duration(seconds: 1);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5).skipWhile((numero) {
    return numero <= 6;
  });

  await for (var element in stream) {
    print(element);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
