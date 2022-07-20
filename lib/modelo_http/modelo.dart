import 'package:http/http.dart' as http;

import 'cidade.dart';

void main() {
  buscarCep(cep: '88990000');
}

Future<void> buscarCep({required String cep}) async {
  var url = 'https://viacep.com.br/ws/$cep/json/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var cidade = Cidade.fromJson(response.body);
    // ignore: avoid_print
    print(cidade);
  }
}
