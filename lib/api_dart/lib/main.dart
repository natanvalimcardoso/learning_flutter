import 'model/telefone.dart';

void main() {
  const telefoneJson = '''
  {
    "ddd": 11,
    "numero": "48991749818"
  }
  ''';

  final telefone = Telefone.fromJson(telefoneJson);
  print(telefone.ddd);
  print(telefone.toMap());
  }
