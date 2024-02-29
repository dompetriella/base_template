import 'dart:math';

import 'package:base_template/app/models/pokemon.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample_api_provider.g.dart';

@riverpod
Future<Pokemon> pokemon(PokemonRef ref) async {
  Dio dio = Dio();
  // Using package:http, we fetch a random activity from the Bored API.
  Random random = Random();
  int randomInt = random.nextInt(252) + 1;
  final response =
      await dio.get('https://pokeapi.co/api/v2/pokemon/$randomInt');
  // Finally, we convert the Map into an Activity instance.
  Pokemon pokemon = Pokemon.fromJson(response.data);
  return pokemon;
}
