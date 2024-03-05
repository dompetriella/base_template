// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_stream.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SampleStreamData {
  int get waterLevel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SampleStreamDataCopyWith<SampleStreamData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleStreamDataCopyWith<$Res> {
  factory $SampleStreamDataCopyWith(
          SampleStreamData value, $Res Function(SampleStreamData) then) =
      _$SampleStreamDataCopyWithImpl<$Res, SampleStreamData>;
  @useResult
  $Res call({int waterLevel});
}

/// @nodoc
class _$SampleStreamDataCopyWithImpl<$Res, $Val extends SampleStreamData>
    implements $SampleStreamDataCopyWith<$Res> {
  _$SampleStreamDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waterLevel = null,
  }) {
    return _then(_value.copyWith(
      waterLevel: null == waterLevel
          ? _value.waterLevel
          : waterLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SampleStreamDataImplCopyWith<$Res>
    implements $SampleStreamDataCopyWith<$Res> {
  factory _$$SampleStreamDataImplCopyWith(_$SampleStreamDataImpl value,
          $Res Function(_$SampleStreamDataImpl) then) =
      __$$SampleStreamDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int waterLevel});
}

/// @nodoc
class __$$SampleStreamDataImplCopyWithImpl<$Res>
    extends _$SampleStreamDataCopyWithImpl<$Res, _$SampleStreamDataImpl>
    implements _$$SampleStreamDataImplCopyWith<$Res> {
  __$$SampleStreamDataImplCopyWithImpl(_$SampleStreamDataImpl _value,
      $Res Function(_$SampleStreamDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? waterLevel = null,
  }) {
    return _then(_$SampleStreamDataImpl(
      waterLevel: null == waterLevel
          ? _value.waterLevel
          : waterLevel // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SampleStreamDataImpl implements _SampleStreamData {
  _$SampleStreamDataImpl({this.waterLevel = 0});

  @override
  @JsonKey()
  final int waterLevel;

  @override
  String toString() {
    return 'SampleStreamData(waterLevel: $waterLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SampleStreamDataImpl &&
            (identical(other.waterLevel, waterLevel) ||
                other.waterLevel == waterLevel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, waterLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SampleStreamDataImplCopyWith<_$SampleStreamDataImpl> get copyWith =>
      __$$SampleStreamDataImplCopyWithImpl<_$SampleStreamDataImpl>(
          this, _$identity);
}

abstract class _SampleStreamData implements SampleStreamData {
  factory _SampleStreamData({final int waterLevel}) = _$SampleStreamDataImpl;

  @override
  int get waterLevel;
  @override
  @JsonKey(ignore: true)
  _$$SampleStreamDataImplCopyWith<_$SampleStreamDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
