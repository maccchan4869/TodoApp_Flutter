// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoData _$TodoDataFromJson(Map<String, dynamic> json) {
  return _TodoData.fromJson(json);
}

/// @nodoc
class _$TodoDataTearOff {
  const _$TodoDataTearOff();

  _TodoData call(
      {required int id, required String description, required bool isDone}) {
    return _TodoData(
      id: id,
      description: description,
      isDone: isDone,
    );
  }

  TodoData fromJson(Map<String, Object?> json) {
    return TodoData.fromJson(json);
  }
}

/// @nodoc
const $TodoData = _$TodoDataTearOff();

/// @nodoc
mixin _$TodoData {
  int get id => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoDataCopyWith<TodoData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoDataCopyWith<$Res> {
  factory $TodoDataCopyWith(TodoData value, $Res Function(TodoData) then) =
      _$TodoDataCopyWithImpl<$Res>;
  $Res call({int id, String description, bool isDone});
}

/// @nodoc
class _$TodoDataCopyWithImpl<$Res> implements $TodoDataCopyWith<$Res> {
  _$TodoDataCopyWithImpl(this._value, this._then);

  final TodoData _value;
  // ignore: unused_field
  final $Res Function(TodoData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TodoDataCopyWith<$Res> implements $TodoDataCopyWith<$Res> {
  factory _$TodoDataCopyWith(_TodoData value, $Res Function(_TodoData) then) =
      __$TodoDataCopyWithImpl<$Res>;
  @override
  $Res call({int id, String description, bool isDone});
}

/// @nodoc
class __$TodoDataCopyWithImpl<$Res> extends _$TodoDataCopyWithImpl<$Res>
    implements _$TodoDataCopyWith<$Res> {
  __$TodoDataCopyWithImpl(_TodoData _value, $Res Function(_TodoData) _then)
      : super(_value, (v) => _then(v as _TodoData));

  @override
  _TodoData get _value => super._value as _TodoData;

  @override
  $Res call({
    Object? id = freezed,
    Object? description = freezed,
    Object? isDone = freezed,
  }) {
    return _then(_TodoData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: isDone == freezed
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TodoData implements _TodoData {
  const _$_TodoData(
      {required this.id, required this.description, required this.isDone});

  factory _$_TodoData.fromJson(Map<String, dynamic> json) =>
      _$$_TodoDataFromJson(json);

  @override
  final int id;
  @override
  final String description;
  @override
  final bool isDone;

  @override
  String toString() {
    return 'TodoData(id: $id, description: $description, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TodoData &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.isDone, isDone));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(isDone));

  @JsonKey(ignore: true)
  @override
  _$TodoDataCopyWith<_TodoData> get copyWith =>
      __$TodoDataCopyWithImpl<_TodoData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoDataToJson(this);
  }
}

abstract class _TodoData implements TodoData {
  const factory _TodoData(
      {required int id,
      required String description,
      required bool isDone}) = _$_TodoData;

  factory _TodoData.fromJson(Map<String, dynamic> json) = _$_TodoData.fromJson;

  @override
  int get id;
  @override
  String get description;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$TodoDataCopyWith<_TodoData> get copyWith =>
      throw _privateConstructorUsedError;
}
