import 'package:freezed_annotation/freezed_annotation.dart';
part 'new_and_hot.freezed.dart';
part 'new_and_hot.g.dart';
@freezed
class NewAndHot with _$NewAndHot {
  const factory NewAndHot({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'poster_path') required String? posterPath,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'title') required String? title,
     // ignore: invalid_annotation_target
     @JsonKey(name: 'overview') required String? overview,
      // ignore: invalid_annotation_target
      @JsonKey(name: 'release_date') required String? releaseDate,
  }) = _NewAndHot;

  factory NewAndHot.fromJson(Map<String, dynamic> json) =>
      _$NewAndHotFromJson(json);
}