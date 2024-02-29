import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'sample_object.freezed.dart';
part 'sample_object.g.dart';

@freezed
class SampleObject with _$SampleObject {
  const factory SampleObject(
      {required int id,
      required String name,
      @Default(0) int number}) = _SampleObject;

  factory SampleObject.fromJson(Map<String, Object?> json) =>
      _$SampleObjectFromJson(json);
}
