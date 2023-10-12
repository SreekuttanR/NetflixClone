import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:netflix/domain/core/failure/main_failure.dart';

import 'package:netflix/domain/new_and_hot/models/new_and_hot.dart';

import '../../domain/new_and_hot/new_and_hot_service.dart';
import '../core/api_end_points.dart';

@LazySingleton(as: NewAndHotService)
class ComingSoonRepository implements NewAndHotService {
  @override
  Future<Either<MainFailure, List<NewAndHot>>> getComingSoon() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.comingSoon);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final comingSoonList = (response.data['results'] as List).map((e) {
          return NewAndHot.fromJson(e);
        }).toList();
        //print(comingSoonList);
        return Right(comingSoonList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {

      return const Left(MainFailure.clientFailure());
    }
  }

  @override
  Future<Either<MainFailure, List<NewAndHot>>>
      getEvorionesWatching() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.evoryOnesWatching);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final evorionesWatchingList =
            (response.data['results'] as List).map((e) {
          return NewAndHot.fromJson(e);
        }).toList();
       // print(response.data.toString());
        return Right(evorionesWatchingList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
