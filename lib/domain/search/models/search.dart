import 'package:freezed_annotation/freezed_annotation.dart';
part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class Search with _$Search {
  const factory Search({
   // @JsonKey(name: 'original_title') required String? orginalTitle,

    // ignore: invalid_annotation_target
    @JsonKey(name: 'poster_path') required String? posterPath,
  }) = _Search;

  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
}
