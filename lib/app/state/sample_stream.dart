import 'dart:math';

import 'package:base_template/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample_stream.g.dart';

@riverpod
Stream<Map<String, dynamic>> sampleStream(SampleStreamRef ref) async* {
  final _stream =
      supabase.from('sample_stream').select().eq('id', 1).single().asStream();
  yield* _stream;
}

increaseWaterLevel(WidgetRef ref) async {
  int raw = ref
      .watch(sampleStreamProvider)
      .whenData((value) => value['water_level'])
      .value;

  Random random = Random();
  int increase = random.nextInt(5) + 1;

  int currentWaterLevel = raw;
  int testLevel = currentWaterLevel + increase;
  int increasedLevel = testLevel >= 100 ? 100 : testLevel;
  await supabase
      .from('sample_stream')
      .update({'water_level': increasedLevel}).eq('id', 1);
}

decreaseWaterLevel() async {
  Random random = Random();
  int decrease = random.nextInt(5) + 1;
  final List<dynamic> session =
      await supabase.from('sample_stream').select().eq('id', 1);
  int currentWaterLevel = session.first['water_level'];
  int testLevel = currentWaterLevel - decrease;
  int decreasedLevel = testLevel <= 0 ? 0 : testLevel;
  await supabase
      .from('sample_stream')
      .update({'water_level': decreasedLevel}).eq('id', 1);
}

emptyWater() async {
  await supabase.from('sample_stream').update({'water_level': 0}).eq('id', 1);
}
