import 'package:json_annotation/json_annotation.dart';

part 'prediction.g.dart';

@JsonSerializable(includeIfNull: false)
class Prediction {
  final String description;
  final String id;
  @JsonKey(name: 'distance_meters')
  final int distanceMeters;
  @JsonKey(name: 'place_id')
  final String placeId;
  final String reference;
  final List<String> types;

  Prediction(
    this.description,
    this.id,
    this.distanceMeters,
    this.placeId,
    this.reference,
    this.types,
  );

  factory Prediction.fromJson(Map<String, dynamic> json) =>
      _$PredictionFromJson(json);

  Map<String, dynamic> toJson() => _$PredictionToJson(this);
}
