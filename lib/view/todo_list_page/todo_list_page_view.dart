import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/view/todo_list_page/parts/todo_list_area.dart';
import 'package:todo/view_model/todo_list_page/todo_list_page_view_model.dart';

class TodoListPageView extends ConsumerWidget {
  const TodoListPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(todoListPageProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo一覧画面"),
      ),
      body: TodoListArea(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {notifier.addTodo()},
        child: const Icon(Icons.add_rounded),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
