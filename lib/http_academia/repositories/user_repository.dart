import 'package:http/http.dart';

import '../models/user.dart';

class UserRepository {
  Future<User?> fetchUser(String id) async {
    var url = 'https://5f7cba02834b5c0016b058aa.mockapi.io/api/users/$id';
    var response = await get(Uri.parse(url));
    if (response.statusCode == 200) {
      return User.fromJson(response.body);
    }
    return null;
  }
}
