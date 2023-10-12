import 'package:freezed_annotation/freezed_annotation.dart';
part 'fast_and_laugh.freezed.dart';
part 'fast_and_laugh.g.dart';

@freezed
class FastAndLaugh with _$FastAndLaugh {
  const factory FastAndLaugh({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'sources') required String? sources,
  }) = _FastAndLaugh;

  factory FastAndLaugh.fromJson(Map<String, dynamic> json) =>
      _$FastAndLaughFromJson(json);
}
