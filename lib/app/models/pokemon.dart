// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

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

Color getColorForPokemonType(String type) {
  switch (type.toLowerCase()) {
    case 'normal':
      return Colors.grey.shade300;
    case 'fire':
      return Colors.red;
    case 'water':
      return Colors.blue;
    case 'electric':
      return Colors.amber;
    case 'grass':
      return Colors.green;
    case 'ice':
      return Colors.cyanAccent[100]!;
    case 'fighting':
      return Colors.orange[800]!;
    case 'poison':
      return Colors.purple;
    case 'ground':
      return Colors.brown[300]!;
    case 'flying':
      return Colors.indigo[200]!;
    case 'psychic':
      return Colors.pink;
    case 'bug':
      return Colors.lightGreen[500]!;
    case 'rock':
      return Colors.brown;
    case 'ghost':
      return Colors.purple[900]!;
    case 'dragon':
      return Colors.indigo[900]!;
    case 'dark':
      return Colors.brown[900]!;
    case 'steel':
      return Colors.blueGrey[400]!;
    case 'fairy':
      return Colors.pinkAccent[100]!;
    default:
      return Colors.grey;
  }
}
