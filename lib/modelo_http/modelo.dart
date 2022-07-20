import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() {
 buscarCep(cep: '88990000');
}

 Future<void> buscarCep({required String cep}) async {
    var url = 'https://viacep.com.br/ws/$cep/json/';
    var response =
        await http.get(Uri.parse(url)); 

    if (response.statusCode == 200) {
      var responseData = convert.jsonDecode(response.body);
      if (responseData is Map) {
        print(responseData['cep']);
      }
    }
  }

// {
// cep: "88990-000",
// logradouro: "",
// complemento: "",
// bairro: "",
// localidade: "Praia Grande",
// uf: "SC",
// ibge: "4213807",
// gia: "",
// ddd: "48",
// siafi: "8271",
// }