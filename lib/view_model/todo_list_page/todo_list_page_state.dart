import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/data/entity/todo/todo.dart';

part 'todo_list_page_state.freezed.dart';

@freezed
class TodoListPageState with _$TodoListPageState {
  factory TodoListPageState({required List<Todo> todoList}) =
      _TodoListPageState;
}
