import 'package:dartz/dartz.dart';
import 'package:movies_app/core/error/error_exception.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/movies_module/data/data_source/movies_remote_data_source.dart';
import 'package:movies_app/movies_module/domain/entity/movies.dart';
import 'package:movies_app/movies_module/domain/entity/movies_details.dart';
import 'package:movies_app/movies_module/domain/entity/recommendation.dart';
import 'package:movies_app/movies_module/domain/repository/base_movie_repository.dart';
import 'package:movies_app/movies_module/domain/usecase/get_movie_detail_usecase.dart';
import 'package:movies_app/movies_module/domain/usecase/get_recommendation_usecase.dart';

class MoviesRepository extends BaseMovieRepository {
  final BaseMoviesRemoteDataSource baseMoviesRemoteDataSource;

  MoviesRepository(this.baseMoviesRemoteDataSource);
  @override
  Future<Either<Failure, List<Movies>>> getNowPlaying() async {
    final result = await baseMoviesRemoteDataSource.getNowPlayingMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movies>>> getPopularMovies() async {
    final result = await baseMoviesRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Movies>>> getTopRatedMovies() async {
    final result = await baseMoviesRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetails>> getMovieDetails(
      MovieDetailsParameters parameters) async {
    final result = await baseMoviesRemoteDataSource.getMovieDetails(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameters parameters) async {
    final result =
        await baseMoviesRemoteDataSource.getRecommendation(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
