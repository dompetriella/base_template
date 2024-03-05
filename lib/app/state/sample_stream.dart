import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sample_stream.freezed.dart';
part 'sample_stream.g.dart';

@freezed
class SampleStreamData with _$SampleStreamData {
  factory SampleStreamData({
    @Default(0) int waterLevel,
  }) = _SampleStreamData;
}

@riverpod
class SampleStream extends _$SampleStream {
  @override
  SampleStreamData build() {
    return SampleStreamData();
  }
}
