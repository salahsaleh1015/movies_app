class ApiConstance{
  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String apiKey = '2860e102b7d0112ddd99d79d55cb44c6' ;
  static const String getNowPlayingMoviesPath = '$baseUrl/movie/now_playing?api_key=$apiKey';
  static const String getPopularMoviesPath = '$baseUrl/movie/popular?api_key=$apiKey';
  static const String getTopRatedMoviesPath = '$baseUrl/movie/top_rated?api_key=$apiKey';
  static const String getOnAirTvPath = '$baseUrl/tv/on_the_air?api_key=$apiKey';
  static const String getPopularTvPath = '$baseUrl/tv/popular?api_key=$apiKey';
  static const String getTopRatedTvPath = '$baseUrl/tv/top_rated?api_key=$apiKey';

  static  String getMovieDetailsPath (int movieId)=> '$baseUrl/movie/$movieId?api_key=$apiKey';
  static  String getRecommendationPath (int movieId)=> '$baseUrl/movie/$movieId/recommendations?api_key=$apiKey';

  static const String baseImageUrl = 'https://image.tmdb.org/t/p/w500';
  static String imageUrl (String path)=>"$baseImageUrl$path";

}