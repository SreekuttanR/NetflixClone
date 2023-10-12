import 'package:dartz/dartz.dart';
import '../core/failure/main_failure.dart';
import 'models/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailure, List<Downloads>>> getDowloadsImage();
}
