part of 'new_and_hot_bloc.dart';


@freezed
class NewAndHotState with _$NewAndHotState {
  const factory NewAndHotState({
    required bool isLoading,
    required bool hasError,
    required List<NewAndHot>? comingSoon,
    required Option<Either<MainFailure, List<NewAndHot>>>
        getComingSoonFailureOrSuccesOption,

         required List<NewAndHot>? evorionesWatching,
    required Option<Either<MainFailure, List<NewAndHot>>>
        getEvorionesWatchingFailureOrSuccesOption,
  }) = _NewAndHotState;

  factory NewAndHotState.inital() {
    return const NewAndHotState(
      isLoading: false,
      hasError: false,
      getComingSoonFailureOrSuccesOption: None(),
      comingSoon: [],

      getEvorionesWatchingFailureOrSuccesOption: None(),
      evorionesWatching: [],
    );
  }
}
