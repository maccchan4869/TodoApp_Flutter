import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/view_model/todo_list_page/todo_list_page_view_model.dart';

class TodoListArea extends ConsumerWidget {
  TodoListArea({Key? key}) : super(key: key);

  final Completer<TodoListPageViewModel> _notifier = Completer();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (!_notifier.isCompleted) {
      _notifier.complete(ref.watch(todoListPageProvider.notifier));
      _notifier.future.then((notifier) => notifier.fetchInitTodoList());
    }
    final state = ref.watch(todoListPageProvider);
    return FutureBuilder(
        future: _notifier.future.then((notifier) => notifier.fetchTodoList()),
        builder: (ctx, dataSnapshot) {
          // if (dataSnapshot.connectionState == ConnectionState.waiting) {
          //   // 非同期処理未完了 = 通信中
          //   return const Center(
          //     child: CircularProgressIndicator(),
          //   );
          // }
          return ListView.builder(
              itemCount: state.todoList.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 50,
                  child: Center(child: Text(state.todoList[index].description)),
                );
              });
        });
  }
}
