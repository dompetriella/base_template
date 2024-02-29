
import 'package:base_template/app/models/pokemon.dart';
import 'package:base_template/app/router/routes.dart';
import 'package:base_template/app/state/sample_api_provider.dart';
import 'package:base_template/app/state/sample_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SampleApiPage extends ConsumerWidget {
  const SampleApiPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sampleState = ref.watch(sampleStateProvider);
    var sampleStateActions = ref.watch(sampleStateProvider.notifier);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(children: [
            IconButton(
              onPressed: () {
                const SamplePageRoute().go(context);
              },
              icon: const Icon(Icons.arrow_back),
            ),
            Row(
              children: [
                const Text('Api Route'),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () {
                      sampleStateActions.increment();
                    },
                    child: Row(
                      children: [Text('${sampleState.counter.toString()} ++')],
                    )),
              ],
            )
          ]),
        ),
        body: Consumer(builder: (context, ref, child) {
          final AsyncValue<Pokemon> pokemon = ref.watch(pokemonProvider);
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              switch (pokemon) {
                AsyncData(:final value) => ShowPokemon(value: value),
                AsyncError() => const ShowError(),
                _ => const LinearProgressIndicator()
              },
            ],
          );
        }),
      ),
    );
  }
}

class ShowError extends StatelessWidget {
  const ShowError({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('Error'),
        Container(
          height: 300,
          width: 300,
          color: Colors.white,
          child: const Center(),
        ),
      ],
    );
  }
}

class ShowPokemon extends StatelessWidget {
  const ShowPokemon({
    super.key,
    required this.value,
  });

  final Pokemon value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: getColorForPokemonType(value.types.first['type']['name']),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '#${value.pokemonNumber.toString()} ${value.pokemonName.toUpperCase()}',
                style: const TextStyle(fontSize: 24),
              ),
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    gradient: RadialGradient(colors: [
                  Colors.white,
                  getColorForPokemonType(value.types.first['type']['name'])
                ])),
                child: Image.network(
                  value.sprites['front_default'],
                  fit: BoxFit.fitHeight,
                ).animate().fadeIn().scale(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
