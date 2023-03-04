import '../../domain/entity/tv.dart';

class TvModel extends Tv {
  const TvModel(
      {required super.name,
      required super.genreIds,
      required super.id,
      required super.overView,
      required super.backDropPath,
      required super.firstAirDate,
      required super.originCountry,
      required super.posterPath,
      required super.voteAverage,
      required super.voteCount});
  factory TvModel.fromJson(Map<String, dynamic> json) => TvModel(
        id: json["id"],
        name: json["name"],
        genreIds: List<int>.from(json['genre_ids'].map((e) => e)),
        overView: json["overView"],
        backDropPath: json["back_drop_path"],
        firstAirDate: json["firstAirDate"],
        originCountry: List<String>.from(json['origin_country'].map((e) => e)),
        posterPath: json["poster_path"],
        voteAverage: json["vote_average"],
        voteCount: json["vote_count"],
      );
}
