import 'package:flutter_todos/features/todo/todo_service.dart';

import 'data.dart';

class TodoRepositoryImpl implements TodoRepository {

  TodoService service = TodoService();

  @override
  Future<List<Data>> fetchData() {
    return service.fetchData();
  }

}

abstract class TodoRepository {
  Future<List<Data>> fetchData();
}