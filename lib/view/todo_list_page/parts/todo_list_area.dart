import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/view_model/todo_list_page/todo_list_page_view_model.dart';

class TodoListArea extends ConsumerStatefulWidget {
  final TodoListPageViewModel viewModel;
  const TodoListArea(this.viewModel, {Key? key}) : super(key: key);

  @override
  ConsumerState<TodoListArea> createState() => _TodoListArea();
}

class _TodoListArea extends ConsumerState<TodoListArea> {
  late TodoListPageViewModel _viewModel;
  int i = 0;

  @override
  void initState() {
    _viewModel = widget.viewModel;
    _viewModel.fetchInitTodoList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    a();
    final state = ref.watch(todoListPageProvider);
    return FutureBuilder(
        future: _viewModel.fetchTodoList(),
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

  void a() {
    if (i == 1) {
      return;
    }
    final notifier = ref.watch(todoListPageProvider.notifier);
    notifier.fetchInitTodoList();
    i = 1;
  }
}
