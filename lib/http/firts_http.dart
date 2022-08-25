// ignore_for_file: avoid_print

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

main() async {
  // await buscarCep(cep: '88990000');
  // await buscarPosts();
  // await salvarPost();
}

//* Json simples <Map>  (Get)
Future<void> buscarCep({required String cep}) async {
  var url = 'https://viacep.com.br/ws/$cep/json/';
  var response =
      await http.get(Uri.parse(url)); // suficiente já pra pegar api (get)

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    print(responseData
        .runtimeType); //Forma para descobrir a forma que o json vai retornar
    if (responseData is Map) {
      // print(responseData);
      print(responseData['cep']);
    }
  }
}

//* Json <List> (Get)
Future<void> buscarPosts() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    // print(responseData.runtimeType);
    if (responseData is List) {
      for (var element in responseData) {
        print(element);
        print(element['id']);
      }
    }
  }
}

//Todo (Post - salvar)

Future<void> salvarPost() async {
  var url = 'https://jsonplaceholder.typicode.com/posts/';

  var mapaRequest = {
    'title': 'post novo',
    'body': 'descricao do post',
    'userId': 1,
  };

  var response =
      await http.post(Uri.parse(url), body: convert.jsonEncode(mapaRequest));
  print(response.statusCode);
  print(response.body);
}
