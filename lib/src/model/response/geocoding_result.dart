import 'package:google_maps_api/src/model/response/base_result.dart';
import 'package:json_annotation/json_annotation.dart';

import '../model.dart';

part 'geocoding_result.g.dart';

@JsonSerializable(createToJson: false)
class GeocodingResult extends ResponseStatus {
  GeocodingResult(
    String? status,
    String? errorMessage,
    this.results,
  ) : super(status, errorMessage);

  final List<GeocodingData>? results;

  factory GeocodingResult.fromJson(Map<String, dynamic> json) =>
      _$GeocodingResultFromJson(json);

  @override
  List<Object?> get props => [results];
}

@JsonSerializable(createToJson: false)
class GeocodingData extends BaseResult {
  GeocodingData(
    List<AddressComponent>? addressComponents,
    String? formattedAddress,
    Geometry? geometry,
    String? placeId,
    List<String>? types,
  ) : super(addressComponents, formattedAddress, geometry, placeId, types);

  factory GeocodingData.fromJson(Map<String, dynamic> json) =>
      _$GeocodingDataFromJson(json);

  @override
  List<Object?> get props => super.props;
}
