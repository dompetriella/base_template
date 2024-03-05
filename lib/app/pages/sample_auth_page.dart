import 'package:base_template/app/router/routes.dart';
import 'package:base_template/app/state/sample_state.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SampleAuthPage extends ConsumerWidget {
  const SampleAuthPage({super.key});

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
            Row(children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      const HomePageRoute().go(context);
                    },
                    icon: const Icon(Icons.arrow_back),
                  ),
                  const Text('Auth Route'),
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
          ],
        ),
      ),
      body: Container(color: Colors.red),
    ));
  }
}
