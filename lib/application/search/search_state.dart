part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    //search idle
    required bool isLoading,
    required bool hasError,
    required List<Downloads>? downloads,
    required Option<Either<MainFailure, List<Downloads>>>
        downloadsFailureOrSuccesOption,
//search result
    required List<Search>? search,
    required Option<Either<MainFailure, List<Search>>>
        searchFailureOrSuccesOption,
  }) = _SearchState;

  factory SearchState.inital() {
    return const SearchState(
      isLoading: false,
      hasError: false,
      downloadsFailureOrSuccesOption: None(),
      downloads: [],
      searchFailureOrSuccesOption: None(),
      search: [],
    );
  }
}
