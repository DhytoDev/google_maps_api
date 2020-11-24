// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_autocomplete_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$PlaceAutoCompleteRequestToJson(
    PlaceAutoCompleteRequest instance) {
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
  writeNotNull('languange', instance.languange);
  return val;
}
