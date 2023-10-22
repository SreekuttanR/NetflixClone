import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netflix/domain/core/failure/main_failure.dart';
import 'package:netflix/domain/fast_ant_laugh/fast_and_laugh_service.dart';
import 'package:netflix/domain/fast_ant_laugh/models/fast_and_laugh.dart';

import '../core/api_end_points.dart';

@LazySingleton(as: FastAndLaughService)
class DownloadsRepodsitory implements FastAndLaughService {
  @override
  Future<Either<MainFailure, List<FastAndLaugh>>> getFastAndLaughvideo() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.fastAndLaugh);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final fastAndlaughList = (response.data['videos'] as List).map((e) {
          return FastAndLaugh.fromJson(e);
        }).toList();
        //  print(response.data);
        return Right(fastAndlaughList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
