// import 'package:equatable/equatable.dart';
//
import 'package:equatable/equatable.dart';

import '../../../core/utils/enums.dart';
import '../../domain/entity/movies.dart';

class MoviesState extends Equatable {
  final List<Movies> nowPlayingMovies;
  final RequestState nowPlayingState;
  final String nowPlayingMessage;
  final List<Movies> popularMovies;
  final RequestState popularState;
  final String popularMessage;
  final List<Movies> topRatedMovies;
  final RequestState topRatedState;
  final String topRatedMessage;

  const MoviesState(
      {this.nowPlayingMovies = const [],
      this.nowPlayingState = RequestState.loading,
      this.nowPlayingMessage = '',
      this.popularMovies = const [],
      this.popularState = RequestState.loading,
      this.popularMessage = '',
      this.topRatedMovies = const [],
      this.topRatedState = RequestState.loading,
      this.topRatedMessage = ''});

  MoviesState copyWith({
    List<Movies>? nowPlayingMovies,
    RequestState? nowPlayingState,
    String? nowPlayingMessage,
    List<Movies>? popularMovies,
    RequestState? popularState,
    String? popularMessage,
    List<Movies>? topRatedMovies,
    RequestState? topRatedState,
    String? topRatedMessage,
  }) {
    return MoviesState(
      nowPlayingMovies: nowPlayingMovies ?? this.nowPlayingMovies,
      nowPlayingState: nowPlayingState ?? this.nowPlayingState,
      nowPlayingMessage: nowPlayingMessage ?? this.nowPlayingMessage,
      popularMovies: popularMovies ?? this.popularMovies,
      popularMessage: popularMessage ?? this.popularMessage,
      popularState: popularState ?? this.popularState,
      topRatedMovies: topRatedMovies ?? this.topRatedMovies,
      topRatedMessage: topRatedMessage ?? this.topRatedMessage,
      topRatedState: topRatedState ?? this.topRatedState,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props => [
        nowPlayingMovies,
        nowPlayingState,
        nowPlayingMessage,
        popularMovies,
        popularState,
        popularMessage,
        topRatedState,
        topRatedMessage,
        topRatedMovies,
      ];
}
