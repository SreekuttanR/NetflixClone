import 'package:dartz/dartz.dart';
import 'package:netflix/domain/search/models/search.dart';
import '../core/failure/main_failure.dart';

abstract class SearchService {
  Future<Either<MainFailure, List<Search>>> getSearchImage({
    required String movieQuery,
  });
}
