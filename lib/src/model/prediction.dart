import 'package:json_annotation/json_annotation.dart';

part 'prediction.g.dart';

@JsonSerializable(includeIfNull: false)
class Prediction {
  final String? description;
  final String? id;
  @JsonKey(name: 'distance_meters')
  final int? distanceMeters;
  @JsonKey(name: 'place_id')
  final String? placeId;
  final String? reference;
  final List<String>? types;
  @JsonKey(name: 'structured_formatting')
  final StructuredFormatting? structuredFormatting;
  final List<Term>? terms;

  Prediction(
    this.description,
    this.id,
    this.distanceMeters,
    this.placeId,
    this.reference,
    this.types,
    this.structuredFormatting,
    this.terms,
  );

  factory Prediction.fromJson(Map<String, dynamic> json) =>
      _$PredictionFromJson(json);

  Map<String, dynamic> toJson() => _$PredictionToJson(this);
}

@JsonSerializable()
class StructuredFormatting {
  @JsonKey(name: 'main_text')
  final String mainText;
  @JsonKey(name: 'secondary_text')
  final String secondaryText;

  StructuredFormatting(this.mainText, this.secondaryText);

  factory StructuredFormatting.fromJson(Map<String, dynamic> json) =>
      _$StructuredFormattingFromJson(json);

  Map<String, dynamic> toJson() => _$StructuredFormattingToJson(this);
}

@JsonSerializable()
class Term {
  final int offset;
  final String value;

  Term(this.offset, this.value);

  factory Term.fromJson(Map<String, dynamic> json) => _$TermFromJson(json);

  Map<String, dynamic> toJson() => _$TermToJson(this);
}
