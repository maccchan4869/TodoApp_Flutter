import 'package:flutter/material.dart';
import 'package:todo/repository/todo_list/parts/todo_list_area.dart';

class TodoListPageView extends StatelessWidget {
  const TodoListPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo一覧画面"),
      ),
      body: TodoListArea(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        child: const Icon(Icons.add_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
