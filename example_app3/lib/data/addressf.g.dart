// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addressf.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Addressf _$$_AddressfFromJson(Map<String, dynamic> json) => _$_Addressf(
      id: json['id'] as String?,
      title: json['title'] as String?,
      age: json['age'] as int?,
      title2: json['title2'] as String?,
      isCompleted: json['isCompleted'] as bool?,
      notes: (json['notes'] as List<dynamic>?)
          ?.map((e) => Notef.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AddressfToJson(_$_Addressf instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'age': instance.age,
      'title2': instance.title2,
      'isCompleted': instance.isCompleted,
      'notes': instance.notes,
    };
