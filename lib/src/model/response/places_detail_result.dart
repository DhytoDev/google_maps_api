import 'package:google_maps_api/places.dart';
import 'package:google_maps_api/src/model/address_component.dart';
import 'package:google_maps_api/src/model/response_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'places_detail_result.g.dart';

@JsonSerializable()
class PlaceDetailResult extends ResponseStatus {
  final Result? result;

  PlaceDetailResult(
    String? status,
    String? errorMessage,
    this.result,
  ) : super(status, errorMessage);

  factory PlaceDetailResult.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailResultFromJson(json);

  Map<String, dynamic> toJson() => _$PlaceDetailResultToJson(this);
}

@JsonSerializable()
class Result {
  @JsonKey(name: 'address_components')
  List<AddressComponent>? addressComponents;
  final Geometry? geometry;
  @JsonKey(name: 'business_status')
  final String? businessStatus;
  @JsonKey(name: 'formatted_address')
  final String? formattedAddress;
  final String? name;
  @JsonKey(name: 'international_phone_number')
  final String? phoneNumber;

  Result(
    this.geometry,
    this.businessStatus,
    this.formattedAddress,
    this.name,
    this.phoneNumber,
  );

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);
}
