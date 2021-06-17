// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_detail_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceDetailResult _$PlaceDetailResultFromJson(Map<String, dynamic> json) {
  return PlaceDetailResult(
    json['status'] as String?,
    json['errorMessage'] as String?,
    Result.fromJson(json['result'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PlaceDetailResultToJson(PlaceDetailResult instance) =>
    <String, dynamic>{
      'status': instance.status,
      'errorMessage': instance.errorMessage,
      'result': instance.result,
    };

Result _$ResultFromJson(Map<String, dynamic> json) {
  return Result(
    json['geometry'] == null
        ? null
        : Geometry.fromJson(json['geometry'] as Map<String, dynamic>),
    json['business_status'] as String?,
    json['formatted_address'] as String?,
    json['name'] as String?,
    json['international_phone_number'] as String?,
  )..addressComponents = (json['address_components'] as List<dynamic>?)
      ?.map((e) => AddressComponent.fromJson(e as Map<String, dynamic>))
      .toList();
}

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'address_components': instance.addressComponents,
      'geometry': instance.geometry,
      'business_status': instance.businessStatus,
      'formatted_address': instance.formattedAddress,
      'name': instance.name,
      'international_phone_number': instance.phoneNumber,
    };
