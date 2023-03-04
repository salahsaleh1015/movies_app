

 import 'package:dartz/dartz.dart';
import 'package:movies_app/tvs_module/domain/entity/tv.dart';
import 'package:movies_app/tvs_module/domain/repository/base_tv_repository.dart';

import '../../../core/error/failure.dart';

class GetOnAirTvUseCase  {
   BaseTvRepository baseTvRepository;
  GetOnAirTvUseCase(this.baseTvRepository);

   Future<Either<Failure,List<Tv>>> execute()async{
     return await baseTvRepository.getOnAirTv();
   }
}