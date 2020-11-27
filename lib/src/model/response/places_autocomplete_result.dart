import 'package:google_maps_api/src/model/prediction.dart';
import 'package:google_maps_api/src/model/response_status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'places_autocomplete_result.g.dart';

@JsonSerializable()
class PlacesAutocompleteResult extends ResponseStatus {
  final List<Prediction> predictions;

  PlacesAutocompleteResult(
    String status,
    String errorMessage,
    this.predictions,
  ) : super(status, errorMessage);

  factory PlacesAutocompleteResult.fromJson(Map<String, dynamic> json) =>
      _$PlacesAutocompleteResultFromJson(json);

  Map<String, dynamic> toJson() => _$PlacesAutocompleteResultToJson(this);
}
