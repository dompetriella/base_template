import 'package:base_template/app/pages/home_page.dart';
import 'package:base_template/app/router/routes.dart';
import 'package:base_template/app/state/sample_state.dart';
import 'package:base_template/app/state/sample_stream.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SampleStreamPage extends ConsumerWidget {
  const SampleStreamPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sampleState = ref.watch(sampleStateProvider);
    var sampleStateActions = ref.watch(sampleStateProvider.notifier);
    var sampleStreamState = ref.watch(sampleStreamProvider);
    var sampleStreamStateActions = ref.watch(sampleStreamProvider.notifier);
    double percentFilled = (sampleStreamState.waterLevel) / 100;
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
                  const Text('Stream Route'),
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
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.green,
              Colors.black,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: AnimatedFractionallySizedBox(
                duration: 200.ms,
                alignment: Alignment.bottomCenter,
                heightFactor: percentFilled,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(.40),
                      border: Border(
                          top: BorderSide(color: Colors.white, width: 4))),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              alignment: WrapAlignment.center,
              children: [
                ExamplePageButton(
                    pageName: 'Decrease Water',
                    icon: Icons.local_drink,
                    onPressed: () {}),
                ExamplePageButton(
                    pageName: 'Empty Water',
                    icon: Icons.water_drop_outlined,
                    onPressed: () {}),
                ExamplePageButton(
                    pageName: 'Increase Water',
                    icon: Icons.flood,
                    onPressed: () {})
              ],
            ),
          ),
          Align(
              alignment: Alignment.topCenter,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Water Level: ${(percentFilled * 100).toInt()}%',
                        style: TextStyle(
                            color: Colors.deepPurple,
                            fontSize: 28,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.opacity,
                        color: Colors.deepPurple,
                        size: 40,
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    ));
  }
}
