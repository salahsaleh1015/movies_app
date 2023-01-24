import 'package:equatable/equatable.dart';
import 'package:movies_app/movies_module/domain/entity/genre.dart';

class MovieDetails extends Equatable {
  final int id;
  final String backdropPath;
  final String title;
  final String releaseDate;
  final double voteAverage;
  final String overview;
  final List<Genres> genres;
  final int runtime;

  const MovieDetails(
      {required this.id,
      required this.backdropPath,
      required this.title,
      required this.releaseDate,
      required this.voteAverage,
      required this.overview,
      required this.genres,
      required this.runtime});

  @override
  // TODO: implement props
  List<Object?> get props => [
        id,
        backdropPath,
        title,
        releaseDate,
        voteAverage,
        overview,
        genres,
        runtime
      ];
}
