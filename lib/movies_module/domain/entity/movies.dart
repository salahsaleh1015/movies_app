import 'package:equatable/equatable.dart';

class Movies extends Equatable {
  final int id;
  final String backdropPath;
  final List<int> genreIds;
  final String overview;
  final String title;
  final double voteAverage;
  final String releaseDate;

  const Movies(
      {required this.id,
      required this.backdropPath,
      required this.genreIds,
      required this.overview,
      required this.title,
      required this.voteAverage,
      required this.releaseDate});

  @override
  List<Object> get props => [
        id,
        backdropPath,
        genreIds,
        overview,
        title,
        voteAverage,
        releaseDate,
      ];
}
