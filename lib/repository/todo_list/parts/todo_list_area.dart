import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/view_model/todo_list_page/todo_list_page_view_model.dart';

class TodoListArea extends ConsumerWidget {
  const TodoListArea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(todoListPageProvider.notifier);
    notifier.fetchTodoList();
    final state = ref.watch(todoListPageProvider);

    return ListView.builder(
        itemCount: state.todoList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            child: Center(child: Text(state.todoList[index].description)),
          );
        });
  }
}
