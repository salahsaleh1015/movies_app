import 'package:movies_app/movies_module/data/models/genre_model.dart';
import 'package:movies_app/movies_module/domain/entity/movies_details.dart';

class MovieDetailsModel extends MovieDetails {
  const MovieDetailsModel(
      {required super.id,
      required super.backdropPath,
      required super.title,
      required super.releaseDate,
      required super.voteAverage,
      required super.overview,
      required super.genres,
      required super.runtime});

  factory MovieDetailsModel.fromJson(Map<String, dynamic> json) =>
      MovieDetailsModel(
          title: json["title"],
          id: json["id"],
          runtime: json["runtime"],
          backdropPath: json["backdrop_path"],
          overview: json["overview"],
          releaseDate: json["release_date"],
          voteAverage: json["vote_average"].toDouble(),
          genres: List<GenresModel>.from(
              json["genres"].map((x) => GenresModel.fromJson(x))));
}
