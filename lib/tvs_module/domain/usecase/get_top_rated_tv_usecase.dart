import 'package:dartz/dartz.dart';
import 'package:movies_app/tvs_module/domain/entity/tv.dart';

import '../../../core/error/failure.dart';
import '../repository/base_tv_repository.dart';

class GetTopRatedTvUseCase{
  BaseTvRepository baseTvRepository;
  GetTopRatedTvUseCase(this.baseTvRepository);

  Future<Either<Failure,List<Tv>>> execute()async{
    return await baseTvRepository.getTopRatedTv();
  }
}