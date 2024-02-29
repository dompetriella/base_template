import 'package:base_template/app/models/pokemon.dart';
import 'package:base_template/app/router/routes.dart';
import 'package:base_template/app/state/sample_api_provider.dart';
import 'package:base_template/app/state/sample_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SampleApiPage extends HookConsumerWidget {
  const SampleApiPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sampleState = ref.watch(sampleStateProvider);
    var sampleStateActions = ref.watch(sampleStateProvider.notifier);
    var pokemonState = ref.watch(pokemonStateProvider);
    var pokemonStateActions = ref.watch(pokemonStateProvider.notifier);
    ValueNotifier<bool> open = useState(false);

    Future.delayed(500.ms).then(
      (value) {
        open.value = true;
      },
    );

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        const SamplePageRoute().go(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                    const Text('Api Route'),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          sampleStateActions.increment();
                        },
                        child: Row(
                          children: [
                            Text('${sampleState.counter.toString()} ++')
                          ],
                        )),
                  ],
                )
              ]),
              IconButton(
                  onPressed: () {
                    pokemonStateActions.getPokemon(open);
                  },
                  icon: Icon(Icons.refresh))
            ],
          ),
        ),
        body: Builder(builder: (context) {
          ref.watch(pokemonStateProvider.notifier);
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              pokemonState.when(data: (data) {
                return ShowPokemon(
                  value: data,
                  open: open,
                );
              }, error: (error, stackTrace) {
                return ShowError();
              }, loading: () {
                return LinearProgressIndicator();
              })
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

class ShowPokemon extends HookWidget {
  final Pokemon value;
  final ValueNotifier open;
  const ShowPokemon({super.key, required this.value, required this.open});

  @override
  Widget build(BuildContext context) {
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
          return Colors.black87;
        case 'steel':
          return Colors.blueGrey[400]!;
        case 'fairy':
          return Colors.pinkAccent[100]!;
        default:
          return Colors.grey;
      }
    }

    Color bgColor = getColorForPokemonType(value.types.first['type']['name']);
    Color textColor =
        bgColor.computeLuminance() > 0.5 ? Colors.black : Colors.white;

    return Expanded(
      child: ColoredBox(
        color: bgColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    gradient: RadialGradient(colors: [Colors.white, bgColor])),
                child: open.value
                    ? Image.network(
                        value.sprites['front_default'],
                        fit: BoxFit.fitHeight,
                      ).animate().fadeIn().scale()
                    : Icon(
                        Icons.catching_pokemon,
                        size: 36,
                      ),
              ),
              Text(
                '#${value.pokemonNumber.toString()} ${value.pokemonName.toUpperCase()}',
                style: TextStyle(fontSize: 24, color: textColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
