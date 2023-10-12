part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState({
    required bool isLoading,
    required List<NewAndHot>? trendingNowList,
    required List<NewAndHot>? releasedPastYear,
    required List<NewAndHot>? tenseDramas,
    required List<NewAndHot>? southIndianCinema,
    required Option<Either<MainFailure, List<NewAndHot>>>
        trendingNowListFailureOrSuccesOption,

         required List<NewAndHot>? topTenList,
    required Option<Either<MainFailure, List<NewAndHot>>>
        topTenListFailureOrSuccesOption,
  }) = _HomePageState;

  factory HomePageState.inital() {
    return const HomePageState(
      isLoading: false,
      trendingNowListFailureOrSuccesOption: None(),
      trendingNowList: [],
      releasedPastYear: [],
      tenseDramas: [],
      southIndianCinema: [],

      topTenListFailureOrSuccesOption: None(),
      topTenList: [],
    );
  }
}
