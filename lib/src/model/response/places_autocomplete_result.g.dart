// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_autocomplete_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesAutocompleteResult _$PlacesAutocompleteResultFromJson(
    Map<String, dynamic> json) {
  return PlacesAutocompleteResult(
    json['status'] as String,
    json['errorMessage'] as String,
    (json['predictions'] as List)
        ?.map((e) =>
            e == null ? null : Prediction.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PlacesAutocompleteResultToJson(
        PlacesAutocompleteResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorMessage': instance.errorMessage,
      'predictions': instance.predictions,
    };
