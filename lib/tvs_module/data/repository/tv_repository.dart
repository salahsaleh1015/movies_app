import 'package:dartz/dartz.dart';
import 'package:movies_app/tvs_module/domain/entity/tv.dart';
import 'package:movies_app/tvs_module/domain/repository/base_tv_repository.dart';

import '../../../core/error/failure.dart';

class TvRepository extends BaseTvRepository{
 final BaseTvRepository baseTvRepository;

  TvRepository(this.baseTvRepository);

  @override
  Future<Either<Failure,List<Tv>>> getOnAirTv()async {
   var result =   await baseTvRepository.getOnAirTv();
   return result;
  }

  @override
  Future<Either<Failure,List<Tv>>> getPopularTv() async{
    var result =   await baseTvRepository.getPopularTv();
    return result;
  }

  @override
  Future<Either<Failure,List<Tv>>> getTopRatedTv()async {
    var result =   await baseTvRepository.getTopRatedTv();
    return result;
  }
}