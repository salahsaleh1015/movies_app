import 'package:equatable/equatable.dart';

class Tv extends Equatable {
  final String name;
  final int id;
  final List<int> genreIds;
  final String overView;
  final String backDropPath;
  final String firstAirDate;
  final List<String> originCountry;
  final String posterPath;
  final double voteAverage;
  final int voteCount;

  const Tv(
      {required this.name,
      required this.id,
      required this.genreIds,
      required this.overView,
      required this.backDropPath,
      required this.firstAirDate,
      required this.originCountry,
      required this.posterPath,
      required this.voteAverage,
      required this.voteCount});

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        id,
        genreIds,
        overView,
        backDropPath,
        firstAirDate,
        originCountry,
        posterPath,
        voteAverage,
        voteCount
      ];
}
