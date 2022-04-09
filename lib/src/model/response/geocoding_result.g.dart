// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeocodingResult _$GeocodingResultFromJson(Map<String, dynamic> json) =>
    GeocodingResult(
      json['status'] as String?,
      json['error_message'] as String?,
      (json['results'] as List<dynamic>?)
          ?.map((e) => GeocodingData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

GeocodingData _$GeocodingDataFromJson(Map<String, dynamic> json) =>
    GeocodingData(
      (json['address_components'] as List<dynamic>?)
          ?.map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['formatted_address'] as String?,
      json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      json['place_id'] as String?,
      (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );
