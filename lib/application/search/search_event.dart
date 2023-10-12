part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getDownloadsImage() = _GetDownloadsImage;
  const factory SearchEvent.getSearchImage({
    required String movieQuery,
  }) = _GetSearchImage;
}
