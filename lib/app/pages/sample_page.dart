import 'package:base_template/app/router/routes.dart';
import 'package:base_template/app/state/sample_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SamplePage extends ConsumerWidget {
  const SamplePage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sampleState = ref.watch(sampleStateProvider);
    var sampleStateActions = ref.watch(sampleStateProvider.notifier);
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
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
                              Text('${sampleState.counter.toString()} ++')
                            ],
                          )),
                    ],
                  ),
                  IconButton(
                      onPressed: () {
                        const SampleApiPageRoute().go(context);
                      },
                      icon: const Icon(Icons.catching_pokemon))
                ],
              ),
            ),
            body: Container(color: Colors.blue)));
  }
}
