// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleStateData {
  int get counter => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleStateDataCopyWith<SampleStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleStateDataCopyWith<$Res> {
  factory $SampleStateDataCopyWith(
          SampleStateData value, $Res Function(SampleStateData) then) =
      _$SampleStateDataCopyWithImpl<$Res, SampleStateData>;
  @useResult
  $Res call({int counter});
}

/// @nodoc
class _$SampleStateDataCopyWithImpl<$Res, $Val extends SampleStateData>
    implements $SampleStateDataCopyWith<$Res> {
  _$SampleStateDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_value.copyWith(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleStateDataImplCopyWith<$Res>
    implements $SampleStateDataCopyWith<$Res> {
  factory _$$SampleStateDataImplCopyWith(_$SampleStateDataImpl value,
          $Res Function(_$SampleStateDataImpl) then) =
      __$$SampleStateDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int counter});
}

/// @nodoc
class __$$SampleStateDataImplCopyWithImpl<$Res>
    extends _$SampleStateDataCopyWithImpl<$Res, _$SampleStateDataImpl>
    implements _$$SampleStateDataImplCopyWith<$Res> {
  __$$SampleStateDataImplCopyWithImpl(
      _$SampleStateDataImpl _value, $Res Function(_$SampleStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? counter = null,
  }) {
    return _then(_$SampleStateDataImpl(
      counter: null == counter
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SampleStateDataImpl implements _SampleStateData {
  _$SampleStateDataImpl({this.counter = 0});

  @override
  @JsonKey()
  final int counter;

  @override
  String toString() {
    return 'SampleStateData(counter: $counter)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleStateDataImpl &&
            (identical(other.counter, counter) || other.counter == counter));
  }

  @override
  int get hashCode => Object.hash(runtimeType, counter);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleStateDataImplCopyWith<_$SampleStateDataImpl> get copyWith =>
      __$$SampleStateDataImplCopyWithImpl<_$SampleStateDataImpl>(
          this, _$identity);
}

abstract class _SampleStateData implements SampleStateData {
  factory _SampleStateData({final int counter}) = _$SampleStateDataImpl;

  @override
  int get counter;
  @override
  @JsonKey(ignore: true)
  _$$SampleStateDataImplCopyWith<_$SampleStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
