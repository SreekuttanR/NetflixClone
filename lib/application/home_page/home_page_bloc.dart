import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../domain/core/failure/main_failure.dart';
import '../../domain/new_and_hot/models/new_and_hot.dart';
import '../../domain/new_and_hot/new_and_hot_service.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

@injectable
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final NewAndHotService _homePageService;
  HomePageBloc(this._homePageService) : super(HomePageState.inital()) {
    on<_GetComingSoon>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        trendingNowListFailureOrSuccesOption: none(),
      ));
      final Either<MainFailure, List<NewAndHot>> comingSoonOption =
          await _homePageService.getComingSoon();

      emit(comingSoonOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              trendingNowListFailureOrSuccesOption: some(
                Left(failure),
              )), (success) {
        // final trendingNowLists = success;
        // final releasedPastYears = success;
        // final tenseDramass = success;
        // final southIndianCinemas = success;

        // trendingNowLists.shuffle();
        // releasedPastYears.shuffle();
        // tenseDramass.shuffle();
        // southIndianCinemas.shuffle();

        return state.copyWith(
            isLoading: false,
            trendingNowList: success,
            // releasedPastYear: releasedPastYears,
            // tenseDramas: tenseDramass,
            // southIndianCinema: success,
            trendingNowListFailureOrSuccesOption: some(
              Right(success),
            ));
      }));
    });

    on<_GetEvorionesWatching>((event, emit) async {
      emit(state.copyWith(
        isLoading: true,
        topTenListFailureOrSuccesOption: none(),
      ));
      final Either<MainFailure, List<NewAndHot>> everionesWatchingOption =
          await _homePageService.getEvorionesWatching();

      emit(everionesWatchingOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              topTenListFailureOrSuccesOption: some(
                Left(failure),
              )), (success) {
        return state.copyWith(
            isLoading: false,
            topTenList: success,
            topTenListFailureOrSuccesOption: some(
              Right(success),
            ));
      }));
    });
  }
}
