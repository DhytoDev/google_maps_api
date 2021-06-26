// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_autocomplete_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesAutocompleteResult _$PlacesAutocompleteResultFromJson(
    Map<String, dynamic> json) {
  return PlacesAutocompleteResult(
    json['status'] as String?,
    json['error_message'] as String?,
    (json['predictions'] as List<dynamic>?)
        ?.map((e) => Prediction.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PlacesAutocompleteResultToJson(
        PlacesAutocompleteResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'error_message': instance.errorMessage,
      'predictions': instance.predictions,
    };
