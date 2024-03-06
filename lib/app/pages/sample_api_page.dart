import 'package:base_template/app/models/pokemon.dart';
import 'package:base_template/app/router/routes.dart';
import 'package:base_template/app/state/sample_api_provider.dart';
import 'package:base_template/app/state/sample_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SampleApiPage extends HookConsumerWidget {
  const SampleApiPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sampleState = ref.watch(sampleStateProvider);
    var sampleStateActions = ref.watch(sampleStateProvider.notifier);
    var pokemonState = ref.watch(pokemonStateProvider);
    var pokemonStateActions = ref.watch(pokemonStateProvider.notifier);
    ValueNotifier<bool> openBall = useState(false);

    Future.delayed(500.ms).then(
      (value) {
        openBall.value = true;
      },
    );

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context, sampleStateActions, sampleState,
            pokemonStateActions, openBall),
        // this is the async stuff
        body: Builder(builder: (context) {
          ref.watch(pokemonStateProvider.notifier);
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              pokemonState.when(data: (data) {
                return ShowPokemon(
                  value: data,
                  openBall: openBall,
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

  AppBar _buildAppBar(
      BuildContext context,
      SampleState sampleStateActions,
      SampleStateData sampleState,
      PokemonState pokemonStateActions,
      ValueNotifier<bool> open) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    const HomePageRoute().go(context);
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
                        Text(
                            'Global State Ref = ${sampleState.counter.toString()}')
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
  final ValueNotifier openBall;
  const ShowPokemon({super.key, required this.value, required this.openBall});

  @override
  Widget build(BuildContext context) {
    Color getColorForPokemonType(String type) {
      switch (type.toLowerCase()) {
        case 'normal':
          return Colors.grey;
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
          return Colors.black;
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
      child: AnimatedContainer(
        duration: 400.ms,
        color: bgColor,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedContainer(
                duration: 400.ms,
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    gradient: RadialGradient(colors: [Colors.white, bgColor])),
                child: openBall.value
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
