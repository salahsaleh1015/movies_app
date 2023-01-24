import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies_app/core/error/failure.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies_module/domain/entity/movies_details.dart';
import 'package:movies_app/movies_module/domain/repository/base_movie_repository.dart';

class GetMovieDetailsUseCase extends BaseUseCase<MovieDetails , MovieDetailsParameters>{
final  BaseMovieRepository baseMovieRepository;

  GetMovieDetailsUseCase(this.baseMovieRepository);
  @override
  Future<Either<Failure, MovieDetails>> execute(MovieDetailsParameters parameters)async {
   return await baseMovieRepository.getMovieDetails(parameters);
  }
}
class MovieDetailsParameters extends Equatable{
  final int movieId;

const MovieDetailsParameters({required this.movieId});

  @override
  // TODO: implement props
  List<Object?> get props =>[movieId];
}
