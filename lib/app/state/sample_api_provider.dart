import 'dart:math';

import 'package:base_template/app/models/pokemon.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample_api_provider.g.dart';

@riverpod
class PokemonState extends _$PokemonState {
  @override
  Future<Pokemon> build() async {
    var pokemon = getPokemonFirstCall();
    return pokemon;
  }

  Future<Pokemon> getPokemonFirstCall() async {
    Dio dio = Dio();
    Random random = Random();
    int randomInt = random.nextInt(252) + 1;
    final response =
        await dio.get('https://pokeapi.co/api/v2/pokemon/$randomInt');
    Pokemon pokemon = Pokemon.fromJson(response.data);
    return pokemon;
  }

  Future<void> getPokemon(ValueNotifier<bool> open) async {
    state = AsyncValue.data(await getPokemonFirstCall());
    open.value = false;
  }
}
