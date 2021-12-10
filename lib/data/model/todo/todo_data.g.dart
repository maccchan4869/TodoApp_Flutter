// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoData _$$_TodoDataFromJson(Map<String, dynamic> json) => _$_TodoData(
      id: json['id'] as int,
      description: json['description'] as String,
      isDone: json['isDone'] as bool,
    );

Map<String, dynamic> _$$_TodoDataToJson(_$_TodoData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'isDone': instance.isDone,
    };
