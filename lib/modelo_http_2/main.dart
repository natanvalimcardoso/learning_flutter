import 'package:http/http.dart';
import 'package:learn_flutter/modelo_http_2/user.dart';

main() {
  fetchUser();
}

Future<void> fetchUser() async {
  var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/1';
  var response = await get(Uri.parse(url));
  if (response.statusCode == 200) {
    var user = User.fromJson(response.body);
    print(user);
    print(user.name);
  }
}
