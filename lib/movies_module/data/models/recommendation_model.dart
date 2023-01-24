import 'package:movies_app/movies_module/domain/entity/recommendation.dart';

class RecommendationModel extends Recommendation {
  const RecommendationModel({required super.id, super.backdropPath});
  factory RecommendationModel.fromJson(Map<String, dynamic> json) =>
      RecommendationModel(
        id: json['id'],
        backdropPath:
            json['backdrop_path'] ?? '/r9PkFnRUIthgBp2JZZzD380MWZy.jpg',
      );
}
