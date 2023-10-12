import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failure/main_failure.dart';
import '../../domain/new_and_hot/models/new_and_hot.dart';
import '../../domain/new_and_hot/new_and_hot_service.dart';

part 'new_and_hot_event.dart';
part 'new_and_hot_state.dart';
part 'new_and_hot_bloc.freezed.dart';


@injectable
class NewAndHotBloc extends Bloc<NewAndHotEvent, NewAndHotState> {
  final NewAndHotService _newAndHotService;
  NewAndHotBloc(this._newAndHotService) : super(NewAndHotState.inital()) {

    on<_GetComingSoon>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
        getComingSoonFailureOrSuccesOption: none(),
      ));
      final Either<MainFailure, List<NewAndHot>> comingSoonOption =
          await _newAndHotService.getComingSoon();

      emit(comingSoonOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              hasError: true,
              getComingSoonFailureOrSuccesOption: some(
                Left(failure),
              )),
          (success) => state.copyWith(
              isLoading: false,
              hasError: false,
              comingSoon: success,
              getComingSoonFailureOrSuccesOption: some(
                Right(success),
              ))));
    });

     on<_GetEvorionesWatching>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        getEvorionesWatchingFailureOrSuccesOption: none(),
      ));
      final Either<MainFailure, List<NewAndHot>> everionesWatchingOption =
          await _newAndHotService.getEvorionesWatching();

      emit(everionesWatchingOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              hasError: true,
              getEvorionesWatchingFailureOrSuccesOption: some(
                Left(failure),
              )),
          (success) => state.copyWith(
              isLoading: false,
              evorionesWatching: success,
              getEvorionesWatchingFailureOrSuccesOption: some(
                Right(success),
              ))));
    });

  }
}
