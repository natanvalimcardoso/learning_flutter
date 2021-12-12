import 'package:dio/dio.dart';
import 'package:learn_flutter/models/todo_models.dart';

class TodoRepositories {
  var dio = Dio();
  final url = "https://jsonplaceholder.typicode.com/todos";

  Future <List<TodoModel>> fetchTodos() async {
    final response = await dio.get(url);
    final list = response.data as List;

    List<TodoModel> todos = [];
    for (var json in list) {
      final todo = TodoModel.fromJson(json);
      todos.add(todo);
    }
    return todos;
  }
}
