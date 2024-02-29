import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample_state.freezed.dart';
part 'sample_state.g.dart';

@freezed
class SampleStateData with _$SampleStateData {
  factory SampleStateData({
    @Default(0) int counter,
  }) = _SampleStateData;
}

@Riverpod(keepAlive: true)
class SampleState extends _$SampleState {
  @override
  SampleStateData build() {
    return SampleStateData();
  }

  void increment() {
    state = state.copyWith(counter: state.counter + 1);
  }
}
