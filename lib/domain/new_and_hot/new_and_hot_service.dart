import 'package:dartz/dartz.dart';
import 'package:netflix/domain/new_and_hot/models/new_and_hot.dart';

import '../core/failure/main_failure.dart';

abstract class NewAndHotService {
  Future<Either<MainFailure, List<NewAndHot>>> getEvorionesWatching();
  Future<Either<MainFailure, List<NewAndHot>>> getComingSoon();
}