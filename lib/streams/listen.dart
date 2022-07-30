Future<void> main() async {
  const interval = Duration(seconds: 2);
  var stream = Stream<int>.periodic(interval, callback);
  stream = stream.take(5);
  
  stream.listen((numero) { 
    print(numero);
  });
 
}

int callback(int value) {
  return (value + 1) * 2;
}
