// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonImpl _$$PokemonImplFromJson(Map<String, dynamic> json) =>
    _$PokemonImpl(
      pokemonName: json['name'] as String,
      pokemonNumber: json['id'] as int,
      types: json['types'] as List<dynamic>,
      sprites: json['sprites'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$PokemonImplToJson(_$PokemonImpl instance) =>
    <String, dynamic>{
      'name': instance.pokemonName,
      'id': instance.pokemonNumber,
      'types': instance.types,
      'sprites': instance.sprites,
    };
