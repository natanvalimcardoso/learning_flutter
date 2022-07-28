import '../models/cidade.dart';
import 'package:http/http.dart' as http;

class CidadeRepository {
  Future<Cidade> buscarCidade(String cep) async {
    var url = 'https://viacep.com.br/ws/$cep/json/';
    var response = await http.get(Uri.parse(url)); //* Json

    if (response.statusCode == 200) {
      return Cidade.fromJson(response.body);
    } else {
      throw Exception();
    }
  }
}
