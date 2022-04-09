// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_detail_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDetailsResult _$PlaceDetailsResultFromJson(Map<String, dynamic> json) =>
    PlaceDetailsResult(
      json['status'] as String?,
      json['error_message'] as String?,
      json['result'] == null
          ? null
          : PlaceDetailsData.fromJson(json['result'] as Map<String, dynamic>),
    );

PlaceDetailsData _$PlaceDetailsDataFromJson(Map<String, dynamic> json) =>
    PlaceDetailsData(
      (json['address_components'] as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : AddressComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['formatted_address'] as String?,
      json['geometry'] == null
          ? null
          : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
      json['place_id'] as String?,
      (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      json['name'] as String?,
      json['international_phone_number'] as String?,
    );
