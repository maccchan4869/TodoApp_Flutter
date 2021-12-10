import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/repository/todo_list/todo_list_repository.dart';
import 'package:todo/view_model/todo_list_page/todo_list_page_state.dart';

final todoListPageProvider =
    StateNotifierProvider<TodoListPageViewModel, TodoListPageState>(
        (ref) => TodoListPageViewModel(TodoListRepository()));

class TodoListPageViewModel extends StateNotifier<TodoListPageState> {
  TodoListPageViewModel(this._todoListRepository)
      : super(TodoListPageState(todoList: []));

  final TodoListRepository _todoListRepository;

  Future<void> fetchTodoList() async {
    try {
      final fetchTodoList = await _todoListRepository.fetchTodoList();
      state = state.copyWith(todoList: fetchTodoList);
    } catch (e) {
      log(e.toString());
    }
  }
}
