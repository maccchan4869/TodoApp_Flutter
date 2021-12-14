import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo/data/entity/todo/todo.dart';
import 'package:todo/repository/todo_list/todo_list_repository.dart';
import 'package:todo/view_model/todo_list_page/todo_list_page_state.dart';

final todoListPageProvider =
    StateNotifierProvider<TodoListPageViewModel, TodoListPageState>(
        (ref) => TodoListPageViewModel(TodoListRepository()));

class TodoListPageViewModel extends StateNotifier<TodoListPageState> {
  TodoListPageViewModel(this._todoListRepository)
      : super(TodoListPageState(todoList: []));

  final TodoListRepository _todoListRepository;

  Future<void> fetchInitTodoList() async {
    try {
      final todoList = await _todoListRepository.fetchInitTodoList();
      state = state.copyWith(todoList: todoList);
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> fetchTodoList() async {
    try {
      final todoList = await _todoListRepository.fetchTodoList();
      state = state.copyWith(todoList: todoList);
    } catch (e) {
      log(e.toString());
    }
  }

  void addTodo() async {
    try {
      Todo addTodoData = Todo(id: 4, description: "説明");
      _todoListRepository.addTodo(addTodoData);
      fetchTodoList();
    } catch (e) {
      log(e.toString());
    }
  }
}
