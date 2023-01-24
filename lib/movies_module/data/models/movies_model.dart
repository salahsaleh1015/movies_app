import 'package:movies_app/movies_module/domain/entity/movies.dart';

class MoviesModel extends Movies {
  const MoviesModel(
      {required super.id,
      required super.backdropPath,
      required super.genreIds,
      required super.overview,
      required super.title,
      required super.voteAverage,
      required super.releaseDate});

  factory MoviesModel.fromJson(Map<String, dynamic> json) => MoviesModel(
      id: json['id'],
      backdropPath: json['backdrop_path'],
      genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
      overview: json['overview'],
      title: json['title'],
      voteAverage: json['vote_average'].toDouble(),
      releaseDate: json['release_date']);
}
