import 'package:dartz/dartz.dart';
import 'package:movies_app/tvs_module/domain/entity/tv.dart';

import '../../../core/error/failure.dart';

abstract class BaseTvRepository {
  Future<Either<Failure,List<Tv>>> getOnAirTv();
  Future<Either<Failure,List<Tv>>> getPopularTv();
  Future<Either<Failure,List<Tv>>> getTopRatedTv();
}
