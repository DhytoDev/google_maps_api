import 'package:json_annotation/json_annotation.dart';

part 'query_params.g.dart';

@JsonSerializable(createFactory: false, includeIfNull: false)
class QueryParams {
  final String input;
  @JsonKey(name: 'key')
  final String apiKey;
  final String location;
  final String origin;
  final num radius;
  final String languange;
  @JsonKey(name: 'place_id')
  final String placeId;

  QueryParams({
    this.input,
    this.apiKey,
    this.location,
    this.origin,
    this.radius,
    this.languange,
    this.placeId,
  });

  Map<String, dynamic> toJson() => _$QueryParamsToJson(this);
}
