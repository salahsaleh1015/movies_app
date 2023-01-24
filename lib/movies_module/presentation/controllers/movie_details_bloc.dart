import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:movies_app/core/utils/enums.dart';
import 'package:movies_app/movies_module/domain/entity/movies_details.dart';
import 'package:movies_app/movies_module/domain/usecase/get_movie_detail_usecase.dart';
import 'package:movies_app/movies_module/presentation/controllers/movie_details_event.dart';

import '../../domain/entity/recommendation.dart';
import '../../domain/usecase/get_recommendation_usecase.dart';

part 'movie_details_state.dart';

class MovieDetailsBloc extends Bloc<MovieDetailsEvent, MovieDetailsState> {
  MovieDetailsBloc(this.getMovieDetailsUseCase ,this.getRecommendationUseCase)
      : super(const MovieDetailsState()) {
    on<GetMovieDetailsEvent>(_getMovieDetails);
    on<GetMovieRecommendationEvent>(_getRecommendation);
  }
  GetMovieDetailsUseCase getMovieDetailsUseCase;
  GetRecommendationUseCase getRecommendationUseCase;
  
  FutureOr<void> _getMovieDetails(
      GetMovieDetailsEvent event, Emitter<MovieDetailsState> emit) async {
    final result = await getMovieDetailsUseCase
        .execute(MovieDetailsParameters(movieId: event.id));
    result.fold(
        (l) => emit(state.copyWith(
              movieDetailsMessage: l.message,
              movieDetailsState: RequestState.error,
            )),
        (r) => emit(state.copyWith(
            movieDetails: r, movieDetailsState: RequestState.loaded)));
  }

  FutureOr<void> _getRecommendation(GetMovieRecommendationEvent event, Emitter<MovieDetailsState> emit  ) async{
    final result = await getRecommendationUseCase 
        .execute(RecommendationParameters(event.id));
    result.fold(
            (l) => emit(state.copyWith(
          recommendationMessage: l.message,
          recommendationState: RequestState.error,
        )),
            (r) => emit(state.copyWith(
            recommendation: r, recommendationState: RequestState.loaded)));
  }
}
