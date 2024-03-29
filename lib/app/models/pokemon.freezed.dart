// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Pokemon _$PokemonFromJson(Map<String, dynamic> json) {
  return _Pokemon.fromJson(json);
}

/// @nodoc
mixin _$Pokemon {
  @JsonKey(name: 'name')
  String get pokemonName => throw _privateConstructorUsedError;
  @JsonKey(name: 'id')
  int get pokemonNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'types')
  List<dynamic> get types => throw _privateConstructorUsedError;
  @JsonKey(name: 'sprites')
  Map<String, dynamic> get sprites => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PokemonCopyWith<Pokemon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonCopyWith<$Res> {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) then) =
      _$PokemonCopyWithImpl<$Res, Pokemon>;
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String pokemonName,
      @JsonKey(name: 'id') int pokemonNumber,
      @JsonKey(name: 'types') List<dynamic> types,
      @JsonKey(name: 'sprites') Map<String, dynamic> sprites});
}

/// @nodoc
class _$PokemonCopyWithImpl<$Res, $Val extends Pokemon>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonName = null,
    Object? pokemonNumber = null,
    Object? types = null,
    Object? sprites = null,
  }) {
    return _then(_value.copyWith(
      pokemonName: null == pokemonName
          ? _value.pokemonName
          : pokemonName // ignore: cast_nullable_to_non_nullable
              as String,
      pokemonNumber: null == pokemonNumber
          ? _value.pokemonNumber
          : pokemonNumber // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      sprites: null == sprites
          ? _value.sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonImplCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$$PokemonImplCopyWith(
          _$PokemonImpl value, $Res Function(_$PokemonImpl) then) =
      __$$PokemonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'name') String pokemonName,
      @JsonKey(name: 'id') int pokemonNumber,
      @JsonKey(name: 'types') List<dynamic> types,
      @JsonKey(name: 'sprites') Map<String, dynamic> sprites});
}

/// @nodoc
class __$$PokemonImplCopyWithImpl<$Res>
    extends _$PokemonCopyWithImpl<$Res, _$PokemonImpl>
    implements _$$PokemonImplCopyWith<$Res> {
  __$$PokemonImplCopyWithImpl(
      _$PokemonImpl _value, $Res Function(_$PokemonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pokemonName = null,
    Object? pokemonNumber = null,
    Object? types = null,
    Object? sprites = null,
  }) {
    return _then(_$PokemonImpl(
      pokemonName: null == pokemonName
          ? _value.pokemonName
          : pokemonName // ignore: cast_nullable_to_non_nullable
              as String,
      pokemonNumber: null == pokemonNumber
          ? _value.pokemonNumber
          : pokemonNumber // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      sprites: null == sprites
          ? _value._sprites
          : sprites // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonImpl implements _Pokemon {
  _$PokemonImpl(
      {@JsonKey(name: 'name') required this.pokemonName,
      @JsonKey(name: 'id') required this.pokemonNumber,
      @JsonKey(name: 'types') required final List<dynamic> types,
      @JsonKey(name: 'sprites') required final Map<String, dynamic> sprites})
      : _types = types,
        _sprites = sprites;

  factory _$PokemonImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonImplFromJson(json);

  @override
  @JsonKey(name: 'name')
  final String pokemonName;
  @override
  @JsonKey(name: 'id')
  final int pokemonNumber;
  final List<dynamic> _types;
  @override
  @JsonKey(name: 'types')
  List<dynamic> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final Map<String, dynamic> _sprites;
  @override
  @JsonKey(name: 'sprites')
  Map<String, dynamic> get sprites {
    if (_sprites is EqualUnmodifiableMapView) return _sprites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_sprites);
  }

  @override
  String toString() {
    return 'Pokemon(pokemonName: $pokemonName, pokemonNumber: $pokemonNumber, types: $types, sprites: $sprites)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonImpl &&
            (identical(other.pokemonName, pokemonName) ||
                other.pokemonName == pokemonName) &&
            (identical(other.pokemonNumber, pokemonNumber) ||
                other.pokemonNumber == pokemonNumber) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality().equals(other._sprites, _sprites));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      pokemonName,
      pokemonNumber,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_sprites));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      __$$PokemonImplCopyWithImpl<_$PokemonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonImplToJson(
      this,
    );
  }
}

abstract class _Pokemon implements Pokemon {
  factory _Pokemon(
      {@JsonKey(name: 'name') required final String pokemonName,
      @JsonKey(name: 'id') required final int pokemonNumber,
      @JsonKey(name: 'types') required final List<dynamic> types,
      @JsonKey(name: 'sprites')
      required final Map<String, dynamic> sprites}) = _$PokemonImpl;

  factory _Pokemon.fromJson(Map<String, dynamic> json) = _$PokemonImpl.fromJson;

  @override
  @JsonKey(name: 'name')
  String get pokemonName;
  @override
  @JsonKey(name: 'id')
  int get pokemonNumber;
  @override
  @JsonKey(name: 'types')
  List<dynamic> get types;
  @override
  @JsonKey(name: 'sprites')
  Map<String, dynamic> get sprites;
  @override
  @JsonKey(ignore: true)
  _$$PokemonImplCopyWith<_$PokemonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
