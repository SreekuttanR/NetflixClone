import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';
import 'package:netflix/domain/search/models/search.dart';
import 'package:netflix/domain/search/search_service.dart';

import '../../domain/core/failure/main_failure.dart';
import '../core/api_end_points.dart';

@LazySingleton(as: SearchService)
class SearchRepository implements SearchService {
  @override
  Future<Either<MainFailure, List<Search>>> getSearchImage(
      {required String movieQuery}) async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoints.search, queryParameters: {
        'query': movieQuery,
      });

      if (response.statusCode == 200 || response.statusCode == 201) {
        final searchList = (response.data['results'] as List).map((e) {
          return Search.fromJson(e);
        }).toList();
        // print(searchList);

        return Right(searchList);
      } else {
        return const Left(MainFailure.serverFailure());
      }
    } catch (_) {
      return const Left(MainFailure.clientFailure());
    }
  }
}
