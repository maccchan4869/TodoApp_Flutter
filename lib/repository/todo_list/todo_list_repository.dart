import 'dart:convert';

import 'package:todo/data/entity/todo/todo.dart';
import 'package:todo/data/model/todo/todo_data.dart';

class TodoListRepository {
  TodoListRepository();

  final List<Todo> _todoList = [];

  /// [_todoList] を取得する。
  /// 擬似的な通信を表現するために、あえて時間のかかる処理にしています。
  Future<List<Todo>> fetchTodoList() async {
    // Future.delayed を使うと簡単に〇〇秒待つといった処理がかけます。
    await Future<void>.delayed(const Duration(milliseconds: 1000));

    const response = '''
    [
      {"id": 1, "description": "洗濯", "isDone": false},
      {"id": 2, "description": "洗濯", "isDone": false},
      {"id": 3, "description": "学習", "isDone": false}
    ]
    ''';
    final responseJson = json.decode(response) as List;
    final List<TodoData> responseList =
        responseJson.map((i) => TodoData.fromJson(i)).toList();
    for (var e in responseList) {
      _todoList
          .add(Todo(id: e.id, description: e.description, isDone: e.isDone));
    }
    print(_todoList.length);
    return _todoList;
  }

  /// 指定した[Todo]を追加する。
  void add(Todo todo) => _todoList.add(todo);

  /// 指定した[Todo]を削除する。
  void remove(Todo todo) => _todoList.remove(todo);
}
