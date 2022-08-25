import 'package:learn_flutter/dio/exemplo1/models/todo_models.dart';
import 'package:learn_flutter/dio/exemplo1/repositories/todo_repositories.dart';

class HomeController {
  List<TodoModel> todos = [];
  // ignore: prefer_final_fields
  var _repositories = TodoRepositories(); // intancia a classe das api
  HomeState state = HomeState.start;

  HomeController([TodoRepositories? repositories])
      : _repositories = repositories ?? TodoRepositories();

  Future start() async {
    state = HomeState.loading;
    try {
      todos = await _repositories.fetchTodos();
      state = HomeState.sucess;
    } catch (e) {
      state = HomeState.error;
    } // só chamar na view
  }
}

enum HomeState {
  loading,
  start,
  sucess,
  error,
}
