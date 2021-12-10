import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  factory Todo({
    @Default(0) int id,
    @Default("") String description,
    @Default(false) bool isDone,
  }) = _Todo;
}
