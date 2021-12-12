import 'package:dio/dio.dart';
import 'package:learn_flutter/models/todo_models.dart';

class TodoRepositories {
  var dio = Dio();
  final url = "https://jsonplaceholder.typicode.com/todos";
  
  TodoRepositories([Dio? client]) : dio = client ?? Dio();

  Future <List<TodoModel>> fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;
    return list.map((e) => TodoModel.fromJson(e)).toList();

  }
}
