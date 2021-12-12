import 'package:learn_flutter/models/todo_models.dart';
import 'package:learn_flutter/repositories/todo_repositories.dart';

class HomeController{
  List<TodoModel> todos = [];
  final repositories = TodoRepositories(); // intancia a classe das api
  
  Future start() async{
    todos = await repositories.fetchTodos(); // só chamar na view
  }
}