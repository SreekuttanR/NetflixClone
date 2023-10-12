import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/search/search_service.dart';

import '../../domain/core/failure/main_failure.dart';
import '../../domain/downloads/i_downloads_fazard.dart';
import '../../domain/downloads/models/downloads.dart';
import '../../domain/search/models/search.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final IDownloadsRepo _downloadsRepo;
  final SearchService _searchService;

  SearchBloc(this._downloadsRepo, this._searchService)
      : super(SearchState.inital()) {
    //idle result

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
              hasError: false,
              downloads: success,
              downloadsFailureOrSuccesOption: some(
                Right(success),
              ))));
    });
//search result

    on<_GetSearchImage>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        hasError: false,
        searchFailureOrSuccesOption: none(),
      ));
      final Either<MainFailure, List<Search>> searchOption =
          await _searchService.getSearchImage(movieQuery: event.movieQuery);

      emit(searchOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              hasError: true,
              searchFailureOrSuccesOption: some(
                Left(failure),
              )),
          (success) => state.copyWith(
              isLoading: false,
              hasError: false,
              search: success,
              searchFailureOrSuccesOption: some(
                Right(success),
              ))));
    });
  }
}
