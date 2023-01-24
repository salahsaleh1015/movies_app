
import 'package:get_it/get_it.dart';
import 'package:movies_app/movies_module/data/data_source/movies_remote_data_source.dart';
import 'package:movies_app/movies_module/data/repository/movies_repository.dart';
import 'package:movies_app/movies_module/domain/repository/base_movie_repository.dart';
import 'package:movies_app/movies_module/domain/usecase/get_movie_detail_usecase.dart';
import 'package:movies_app/movies_module/domain/usecase/get_now_playing_usecase.dart';
import 'package:movies_app/movies_module/domain/usecase/get_recommendation_usecase.dart';
import 'package:movies_app/movies_module/presentation/controllers/movie_details_bloc.dart';
import 'package:movies_app/movies_module/presentation/controllers/movies_bloc.dart';

import '../../movies_module/domain/usecase/get_popular_movies_usecase.dart';
import '../../movies_module/domain/usecase/get_top_rated_movies_usecase.dart';

final sl = GetIt.instance;

class ServicesLocator{
   void init(){
     /// movies bloc
     sl.registerFactory(() => MoviesBloc(sl() ,sl() ,sl()));
     sl.registerFactory(() => MovieDetailsBloc(sl() , sl()));
     /// usecase
     sl.registerLazySingleton<GetNowPlayingMoviesUseCase>(() => GetNowPlayingMoviesUseCase(sl()));
     sl.registerLazySingleton<GetPopularMoviesUseCase>(() => GetPopularMoviesUseCase(sl()));
     sl.registerLazySingleton<GetTopRatedMoviesUseCase>(() => GetTopRatedMoviesUseCase(sl()));
     sl.registerLazySingleton<GetMovieDetailsUseCase>(() => GetMovieDetailsUseCase(sl()));
     sl.registerLazySingleton<GetRecommendationUseCase>(() => GetRecommendationUseCase(sl()));

    /// repository
     sl.registerLazySingleton<BaseMovieRepository>(() => MoviesRepository(sl()));
     ///data source
     sl.registerLazySingleton<BaseMoviesRemoteDataSource>(() =>MoviesRemoteDataSource());
   }
}