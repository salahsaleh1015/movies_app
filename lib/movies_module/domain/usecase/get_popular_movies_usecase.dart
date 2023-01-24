import 'package:dartz/dartz.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/movies_module/domain/entity/movies.dart';

import '../../../core/error/failure.dart';
import '../repository/base_movie_repository.dart';

class GetPopularMoviesUseCase extends BaseUseCase<List<Movies>, NoParameters> {
  BaseMovieRepository baseMovieRepository;
  GetPopularMoviesUseCase(this.baseMovieRepository);

  @override
  Future<Either<Failure, List<Movies>>> execute(NoParameters parameters) async {
    return await baseMovieRepository.getPopularMovies();
  }
}
