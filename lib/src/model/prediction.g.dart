// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prediction _$PredictionFromJson(Map<String, dynamic> json) {
  return Prediction(
    json['description'] as String,
    json['id'] as String,
    json['distance_meters'] as int,
    json['place_id'] as String,
    json['reference'] as String,
    (json['types'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$PredictionToJson(Prediction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('id', instance.id);
  writeNotNull('distance_meters', instance.distanceMeters);
  writeNotNull('place_id', instance.placeId);
  writeNotNull('reference', instance.reference);
  writeNotNull('types', instance.types);
  return val;
}
