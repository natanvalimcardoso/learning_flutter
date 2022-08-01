import 'dart:convert';

void main() {
  const cidadeJson = '''
 [ {
    "nome": "São Paulo",
    "previsao": {
      "temperatura": {
        "minima": -5,
        "maxima": 10
      }
    }
  }]
  ''';

  final cidadeMap = json.decode(cidadeJson);
  print(cidadeMap);
}
