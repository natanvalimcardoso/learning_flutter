Future<void> main() async {
  const interval = Duration(seconds: 2);
  final stream = Stream<int>.periodic(interval, callback);

  await for (var element in stream) {
    print(element);
  }
}

int callback(int value) {
  return (value + 1) * 2;
}
