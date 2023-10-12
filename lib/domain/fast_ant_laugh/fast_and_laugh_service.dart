import 'package:dartz/dartz.dart';
import 'package:netflix/domain/fast_ant_laugh/models/fast_and_laugh.dart';
import '../core/failure/main_failure.dart';

abstract class FastAndLaughService {
  Future<Either<MainFailure, List<FastAndLaugh>>> getFastAndLaughvideo();
}