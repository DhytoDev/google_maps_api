// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$QueryParamsToJson(QueryParams instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('input', instance.input);
  writeNotNull('key', instance.apiKey);
  writeNotNull('location', instance.location);
  writeNotNull('origin', instance.origin);
  writeNotNull('radius', instance.radius);
  writeNotNull('language', instance.language);
  writeNotNull('place_id', instance.placeId);
  writeNotNull('latlng', instance.latlng);
  return val;
}
