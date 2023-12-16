// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notef.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Notef _$$_NotefFromJson(Map<String, dynamic> json) => _$_Notef(
      id: json['id'] as String?,
      title: json['title'] as String?,
      title2: json['title2'] as String?,
      idCard: json['idCard'] == null
          ? null
          : IdCardf.fromJson(json['idCard'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NotefToJson(_$_Notef instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'title2': instance.title2,
      'idCard': instance.idCard,
    };
