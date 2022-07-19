import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

main() async {
  // await buscarCep(cep: '88990000');
  await buscarPosts();
}



//* Json simples <Map>
Future<void> buscarCep({required String cep}) async {
  var url = 'https://viacep.com.br/ws/$cep/json/';
  var response = await http.get(Uri.parse(url)); // suficiente já pra pegar api (get)

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    print(responseData.runtimeType); //Forma para descobrir a forma que o json vai retornar 
    if (responseData is Map) {
      // print(responseData);
      print(responseData['cep']);
    }
  }
}

//* Json <List>
Future<void> buscarPosts() async{
  var url = 'https://jsonplaceholder.typicode.com/posts/';
  var response = await http.get(Uri.parse(url)); 

  if (response.statusCode == 200) {
    var responseData = convert.jsonDecode(response.body);
    // print(responseData.runtimeType); 
    if (responseData is List) {
      responseData.forEach((element) {
        print(element);
        print(element['id']);
      });
    }
  }
}
