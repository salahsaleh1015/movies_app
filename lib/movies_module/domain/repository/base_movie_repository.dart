import 'package:dartz/dartz.dart';
import 'package:movies_app/movies_module/domain/entity/movies.dart';
import 'package:movies_app/movies_module/domain/entity/movies_details.dart';
import 'package:movies_app/movies_module/domain/entity/recommendation.dart';
import 'package:movies_app/movies_module/domain/usecase/get_movie_detail_usecase.dart';

import '../../../core/error/failure.dart';
import '../usecase/get_recommendation_usecase.dart';

abstract class BaseMovieRepository {
  Future<Either<Failure,List<Movies>>> getNowPlaying();
  Future<Either<Failure,List<Movies>>> getPopularMovies();
  Future<Either<Failure,List<Movies>>> getTopRatedMovies();
  Future<Either<Failure,MovieDetails>> getMovieDetails(MovieDetailsParameters parameters);
  Future<Either<Failure,List<Recommendation>>> getRecommendation(RecommendationParameters parameters);

}
