import 'package:json_annotation/json_annotation.dart';

part 'place_autocomplete_request.g.dart';

@JsonSerializable(createFactory: false, includeIfNull: false)
class PlaceAutoCompleteRequest {
  final String input;
  @JsonKey(name: 'key')
  final String apiKey;
  final String location;
  final String origin;
  final num radius;
  final String languange;

  PlaceAutoCompleteRequest({
    this.input,
    this.apiKey,
    this.location,
    this.origin,
    this.radius,
    this.languange,
  });

  Map<String, dynamic> toJson() => _$PlaceAutoCompleteRequestToJson(this);
}
