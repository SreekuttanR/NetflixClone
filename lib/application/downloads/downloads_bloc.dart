import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failure/main_failure.dart';
import '../../domain/downloads/i_downloads_fazard.dart';
import '../../domain/downloads/models/downloads.dart';

part 'downloads_event.dart';
part 'downloads_state.dart';
part 'downloads_bloc.freezed.dart';

@injectable
class DownloadsBloc extends Bloc<DownloadsEvent, DownloadsState> {
  final IDownloadsRepo _downloadsRepo;
  DownloadsBloc(this._downloadsRepo) : super(DownloadsState.inital()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
        downloadsFailureOrSuccesOption: none(),
      ));
      final Either<MainFailure, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDowloadsImage();

      emit(downloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              hasError: true,
              downloadsFailureOrSuccesOption: some(
                Left(failure),
              )),
          (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsFailureOrSuccesOption: some(
                Right(success),
              ))));
    });
  }
}
