import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/view_model/todo_list_page/todo_list_page_view_model.dart';

class TodoListArea extends ConsumerStatefulWidget {
  final TodoListPageViewModel viewModel;
  const TodoListArea(this.viewModel, {Key? key}) : super(key: key);

  @override
  ConsumerState<TodoListArea> createState() => _TodoListArea();
}

class _TodoListArea extends ConsumerState<TodoListArea>
    with TickerProviderStateMixin {
  late TodoListPageViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = widget.viewModel;
    _viewModel.fetchTodoList();
  }

  @override
  Widget build(BuildContext context) {
    //final notifier = ref.watch(todoListPageProvider.notifier);
    final state = ref.watch(todoListPageProvider);

    return FutureBuilder(
        future: _viewModel.fetchTodoList(),
        builder: (ctx, dataSnapshot) {
          if (dataSnapshot.connectionState == ConnectionState.waiting) {
            // 非同期処理未完了 = 通信中
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
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
