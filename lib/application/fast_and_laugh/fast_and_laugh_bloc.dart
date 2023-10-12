import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/fast_ant_laugh/fast_and_laugh_service.dart';

import '../../domain/core/failure/main_failure.dart';
import '../../domain/fast_ant_laugh/models/fast_and_laugh.dart';

part 'fast_and_laugh_event.dart';
part 'fast_and_laugh_state.dart';
part 'fast_and_laugh_bloc.freezed.dart';
@injectable
class FastAndLaughBloc extends Bloc<FastAndLaughEvent, FastAndLaughState> {
  final FastAndLaughService _fastAndLaughService;
  FastAndLaughBloc(this._fastAndLaughService) : super( FastAndLaughState.initial()) {
   on<_GetFastAndLaughvideo>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        fastAndLaughFailureOrSuccesOption: none(),
      ));
      final Either<MainFailure, List<FastAndLaugh>> downloadsOption =
          await _fastAndLaughService.getFastAndLaughvideo();

      emit(downloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              fastAndLaughFailureOrSuccesOption: some(
                Left(failure),
              )),
          (success) => state.copyWith(
              isLoading: false,
              fastAndLaugh: success,
              fastAndLaughFailureOrSuccesOption: some(
                Right(success),
              ))));
    });
  }
}
