import 'package:base_template/app/pages/sample_stream_page.dart';
import 'package:base_template/app/router/routes.dart';
import 'package:base_template/app/state/sample_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class HomePage extends ConsumerWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sampleState = ref.watch(sampleStateProvider);
    var sampleStateActions = ref.watch(sampleStateProvider.notifier);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(sampleStateActions, sampleState, context),
            body: ColoredBox(
              color: Colors.blue,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Wrap(children: [
                    ExamplePageButton(
                      pageName: 'API Call',
                      icon: Icons.catching_pokemon,
                      onPressed: () => const SampleApiPageRoute().go(context),
                    ),
                    ExamplePageButton(
                      pageName: 'Stream Database',
                      icon: Icons.bolt,
                      onPressed: () =>
                          const SampleStreamPageRoute().go(context),
                    ),
                    ExamplePageButton(
                      pageName: 'Auth/Logout',
                      icon: Icons.login,
                      onPressed: () => const SampleAuthPageRoute().go(context),
                    )
                  ]),
                ),
              ),
            )));
  }

  AppBar _buildAppBar(SampleState sampleStateActions,
      SampleStateData sampleState, BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          const Text('Home Page'),
          const SizedBox(
            width: 10,
          ),
          ElevatedButton(
              onPressed: () {
                sampleStateActions.increment();
              },
              child: Row(
                children: [
                  Text('Global State Ref = ${sampleState.counter.toString()}')
                ],
              )),
        ],
      ),
    );
  }
}

class ExamplePageButton extends StatelessWidget {
  final String pageName;
  final IconData icon;
  final VoidCallback onPressed;

  const ExamplePageButton(
      {super.key,
      required this.pageName,
      required this.icon,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 24),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  pageName,
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  icon,
                  size: 32,
                )
              ],
            ),
          )),
    );
  }
}
