part of 'fast_and_laugh_bloc.dart';

@freezed
class FastAndLaughState with _$FastAndLaughState {
  const factory FastAndLaughState({
     required bool isLoading,
    required List<FastAndLaugh>? fastAndLaugh,
    required Option<Either<MainFailure, List<FastAndLaugh>>>
        fastAndLaughFailureOrSuccesOption,
  }) = _FastAndLaughState;

  factory FastAndLaughState.initial(){
    return  FastAndLaughState(
      isLoading: false, 
    fastAndLaugh: [],
     fastAndLaughFailureOrSuccesOption:none(),
      );
  }
}
