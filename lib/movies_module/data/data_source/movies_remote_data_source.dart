import 'package:dio/dio.dart';
import 'package:movies_app/core/error/error_exception.dart';
import 'package:movies_app/core/network/api_constant.dart';
import 'package:movies_app/core/network/error_messaage_model.dart';
import 'package:movies_app/movies_module/data/models/movie_details_model.dart';
import 'package:movies_app/movies_module/data/models/movies_model.dart';
import 'package:movies_app/movies_module/data/models/recommendation_model.dart';
import 'package:movies_app/movies_module/domain/entity/recommendation.dart';
import 'package:movies_app/movies_module/domain/usecase/get_movie_detail_usecase.dart';
import 'package:movies_app/movies_module/domain/usecase/get_recommendation_usecase.dart';
abstract class BaseMoviesRemoteDataSource{
  Future<List<MoviesModel>> getNowPlayingMovies();
  Future<List<MoviesModel>> getPopularMovies();
  Future<List<MoviesModel>> getTopRatedMovies();
  Future<MovieDetailsModel> getMovieDetails(MovieDetailsParameters parameters);
  Future<List<RecommendationModel>> getRecommendation(RecommendationParameters parameters);




}
class MoviesRemoteDataSource extends BaseMoviesRemoteDataSource {
  @override
  Future<List<MoviesModel>> getNowPlayingMovies() async {
    final response = await Dio()
        .get(ApiConstance.getNowPlayingMoviesPath);

    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data['results'] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));

    }
  }

  @override
  Future<List<MoviesModel>> getPopularMovies()async {
    var response = await Dio()
        .get(ApiConstance.getPopularMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data['results'] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<MoviesModel>> getTopRatedMovies() async {
    var response = await Dio()
        .get(ApiConstance.getTopRatedMoviesPath);
    if (response.statusCode == 200) {
      return List<MoviesModel>.from((response.data['results'] as List)
          .map((e) => MoviesModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<MovieDetailsModel> getMovieDetails(MovieDetailsParameters parameters) async {
    var response = await Dio()
        .get(ApiConstance.getMovieDetailsPath(parameters.movieId));
    if (response.statusCode == 200) {
      return  MovieDetailsModel.fromJson(response.data);
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<RecommendationModel>> getRecommendation(RecommendationParameters parameters)async {
    var response = await Dio()
        .get(ApiConstance.getRecommendationPath(parameters.movieId));
    if (response.statusCode == 200) {
      return List<RecommendationModel>.from((response.data['results'] as List)
          .map((e) => RecommendationModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

}
