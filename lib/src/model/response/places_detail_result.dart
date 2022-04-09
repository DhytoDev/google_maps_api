import 'package:google_maps_api/google_maps_api.dart';
import 'package:json_annotation/json_annotation.dart';

import '../address_component.dart';
import '../response_status.dart';
import 'base_result.dart';

part 'places_detail_result.g.dart';

@JsonSerializable(createToJson: false)
class PlaceDetailsResult extends ResponseStatus {
  final PlaceDetailsData? result;

  PlaceDetailsResult(
    String? status,
    String? errorMessage,
    this.result,
  ) : super(status, errorMessage);

  factory PlaceDetailsResult.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsResultFromJson(json);

  // Map<String, dynamic> toJson() => _$PlaceDetailResultToJson(this);

  @override
  List<Object?> get props => [result];
}

@JsonSerializable(createToJson: false)
class PlaceDetailsData extends BaseResult {
  final String? name;
  @JsonKey(name: 'international_phone_number')
  final String? phoneNumber;

  PlaceDetailsData(
    List<AddressComponent?>? addressComponents,
    String? formattedAddress,
    Geometry? geometry,
    String? placeId,
    List<String>? types,
    this.name,
    this.phoneNumber,
  ) : super(addressComponents, formattedAddress, geometry, placeId, types);

  factory PlaceDetailsData.fromJson(Map<String, dynamic> json) =>
      _$PlaceDetailsDataFromJson(json);

  @override
  List<Object?> get props => super.props;
}
