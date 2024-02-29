// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SampleObjectImpl _$$SampleObjectImplFromJson(Map<String, dynamic> json) =>
    _$SampleObjectImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      number: json['number'] as int? ?? 0,
    );

Map<String, dynamic> _$$SampleObjectImplToJson(_$SampleObjectImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'number': instance.number,
    };
