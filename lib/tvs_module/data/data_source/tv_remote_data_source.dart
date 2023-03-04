import 'package:dio/dio.dart';
import 'package:movies_app/core/network/error_messaage_model.dart';
import 'package:movies_app/tvs_module/data/models/tv_model.dart';

import '../../../core/error/error_exception.dart';
import '../../../core/network/api_constant.dart';

abstract class BaseTvRemoteDataSource {
  Future<List<TvModel>> getOnAirTv();
  Future<List<TvModel>> getPopularTv();
  Future<List<TvModel>> getTopRatedTv();
}

class TvRemoteDataSource extends BaseTvRemoteDataSource {
  @override
  Future<List<TvModel>> getOnAirTv() async {
    final response = await Dio().get(ApiConstance.getOnAirTvPath);

    if (response.statusCode == 200) {
      return List<TvModel>.from(
          (response.data['results'] as List).map((e) => TvModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<TvModel>> getPopularTv() async {
    final response = await Dio().get(ApiConstance.getPopularTvPath);

    if (response.statusCode == 200) {
      return List<TvModel>.from(
          (response.data['results'] as List).map((e) => TvModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }

  @override
  Future<List<TvModel>> getTopRatedTv() async {
    final response = await Dio().get(ApiConstance.getTopRatedTvPath);

    if (response.statusCode == 200) {
      return List<TvModel>.from(
          (response.data['results'] as List).map((e) => TvModel.fromJson(e)));
    } else {
      throw ServerException(
          errorMessageModel: ErrorMessageModel.fromJson(response.data));
    }
  }
}
