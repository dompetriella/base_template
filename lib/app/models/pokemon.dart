// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  factory Pokemon(
          {@JsonKey(name: 'name') required String pokemonName,
          @JsonKey(name: 'id') required int pokemonNumber,
          @JsonKey(name: 'types') required List<dynamic> types,
          @JsonKey(name: 'sprites') required Map<String, dynamic> sprites}) =
      _Pokemon;

  factory Pokemon.fromJson(Map<String, Object?> json) =>
      _$PokemonFromJson(json);
}
