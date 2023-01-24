import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_app/core/usecase/base_usecase.dart';
import 'package:movies_app/core/utils/enums.dart';

import 'package:movies_app/movies_module/domain/usecase/get_now_playing_usecase.dart';
import 'package:movies_app/movies_module/domain/usecase/get_popular_movies_usecase.dart';
import 'package:movies_app/movies_module/domain/usecase/get_top_rated_movies_usecase.dart';
import 'package:movies_app/movies_module/presentation/controllers/movies_event.dart';
import 'package:movies_app/movies_module/presentation/controllers/movies_state.dart';

class MoviesBloc extends Bloc<MoviesEvent, MoviesState> {
  final GetNowPlayingMoviesUseCase getNowPlayingMoviesUseCase;
  final GetPopularMoviesUseCase getPopularMoviesUseCase;
  final GetTopRatedMoviesUseCase getTopRatedMoviesUseCase;

  MoviesBloc(this.getNowPlayingMoviesUseCase, this.getTopRatedMoviesUseCase,
      this.getPopularMoviesUseCase)
      : super(const MoviesState()) {
    on<GetNowPlayingMoviesEvent>(_getNowPlaying);
    on<GetPopularMoviesEvent>(_getPopular);
    on<GetTopRatedMoviesEvent>(_topRated);
  }

  FutureOr<void> _getNowPlaying(
      GetNowPlayingMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getNowPlayingMoviesUseCase.execute(const NoParameters());

    print(result);
    result.fold(
        (l) => emit(state.copyWith(
            nowPlayingState: RequestState.error, nowPlayingMessage: l.message)),
        (r) => emit(state.copyWith(
            nowPlayingState: RequestState.loaded, nowPlayingMovies: r)));
  }

  FutureOr<void> _getPopular(
      GetPopularMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getPopularMoviesUseCase.execute(const NoParameters());
    result.fold(
        (l) => emit(state.copyWith(
            popularState: RequestState.error, popularMessage: l.message)),
        (r) => emit(state.copyWith(
            popularState: RequestState.loaded, popularMovies: r)));
  }

  FutureOr<void> _topRated(
      GetTopRatedMoviesEvent event, Emitter<MoviesState> emit) async {
    final result = await getTopRatedMoviesUseCase.execute(const NoParameters());
    result.fold(
        (l) => emit(state.copyWith(
            topRatedState: RequestState.error, topRatedMessage: l.message)),
        (r) => emit(state.copyWith(topRatedMovies: r,topRatedState: RequestState.loaded)));
  }
}
