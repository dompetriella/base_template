// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_object.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SampleObject _$SampleObjectFromJson(Map<String, dynamic> json) {
  return _SampleObject.fromJson(json);
}

/// @nodoc
mixin _$SampleObject {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get number => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleObjectCopyWith<SampleObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleObjectCopyWith<$Res> {
  factory $SampleObjectCopyWith(
          SampleObject value, $Res Function(SampleObject) then) =
      _$SampleObjectCopyWithImpl<$Res, SampleObject>;
  @useResult
  $Res call({int id, String name, int number});
}

/// @nodoc
class _$SampleObjectCopyWithImpl<$Res, $Val extends SampleObject>
    implements $SampleObjectCopyWith<$Res> {
  _$SampleObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleObjectImplCopyWith<$Res>
    implements $SampleObjectCopyWith<$Res> {
  factory _$$SampleObjectImplCopyWith(
          _$SampleObjectImpl value, $Res Function(_$SampleObjectImpl) then) =
      __$$SampleObjectImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int number});
}

/// @nodoc
class __$$SampleObjectImplCopyWithImpl<$Res>
    extends _$SampleObjectCopyWithImpl<$Res, _$SampleObjectImpl>
    implements _$$SampleObjectImplCopyWith<$Res> {
  __$$SampleObjectImplCopyWithImpl(
      _$SampleObjectImpl _value, $Res Function(_$SampleObjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? number = null,
  }) {
    return _then(_$SampleObjectImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SampleObjectImpl with DiagnosticableTreeMixin implements _SampleObject {
  const _$SampleObjectImpl(
      {required this.id, required this.name, this.number = 0});

  factory _$SampleObjectImpl.fromJson(Map<String, dynamic> json) =>
      _$$SampleObjectImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final int number;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SampleObject(id: $id, name: $name, number: $number)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SampleObject'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('number', number));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleObjectImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleObjectImplCopyWith<_$SampleObjectImpl> get copyWith =>
      __$$SampleObjectImplCopyWithImpl<_$SampleObjectImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SampleObjectImplToJson(
      this,
    );
  }
}

abstract class _SampleObject implements SampleObject {
  const factory _SampleObject(
      {required final int id,
      required final String name,
      final int number}) = _$SampleObjectImpl;

  factory _SampleObject.fromJson(Map<String, dynamic> json) =
      _$SampleObjectImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get number;
  @override
  @JsonKey(ignore: true)
  _$$SampleObjectImplCopyWith<_$SampleObjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
