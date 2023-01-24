import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies_module/domain/entity/recommendation.dart';
import 'package:movies_app/movies_module/domain/repository/base_movie_repository.dart';

class GetRecommendationUseCase  extends BaseUseCase<List<Recommendation> , RecommendationParameters >{
  @override
  final  BaseMovieRepository baseMovieRepository;

  GetRecommendationUseCase(this.baseMovieRepository);
  Future<Either<Failure, List<Recommendation>>> execute(RecommendationParameters parameters)async {
   return  await baseMovieRepository.getRecommendation(parameters);
  }


}
class RecommendationParameters extends Equatable{
  final int movieId;

 const RecommendationParameters(this.movieId);

  @override
  // TODO: implement props
  List<Object?> get props => [movieId];

}