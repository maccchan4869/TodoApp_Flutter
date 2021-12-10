import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_data.freezed.dart';
part 'todo_data.g.dart';

@freezed
class TodoData with _$TodoData {
  const factory TodoData({
    required int id,
    required String description,
    required bool isDone,
  }) = _TodoData;

  factory TodoData.fromJson(Map<String, dynamic> json) =>
      _$TodoDataFromJson(json);
}
