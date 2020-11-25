// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Prediction _$PredictionFromJson(Map<String, dynamic> json) {
  return Prediction(
    json['description'] as String,
    json['id'] as String,
    json['distance_meters'] as int,
    json['place_id'] as String,
    json['reference'] as String,
    (json['types'] as List)?.map((e) => e as String)?.toList(),
    json['structured_formatting'] == null
        ? null
        : StructuredFormatting.fromJson(
            json['structured_formatting'] as Map<String, dynamic>),
    (json['terms'] as List)
        ?.map(
            (e) => e == null ? null : Term.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PredictionToJson(Prediction instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('description', instance.description);
  writeNotNull('id', instance.id);
  writeNotNull('distance_meters', instance.distanceMeters);
  writeNotNull('place_id', instance.placeId);
  writeNotNull('reference', instance.reference);
  writeNotNull('types', instance.types);
  writeNotNull('structured_formatting', instance.structuredFormatting);
  writeNotNull('terms', instance.terms);
  return val;
}

StructuredFormatting _$StructuredFormattingFromJson(Map<String, dynamic> json) {
  return StructuredFormatting(
    json['main_text'] as String,
    json['secondary_text'] as String,
  );
}

Map<String, dynamic> _$StructuredFormattingToJson(
        StructuredFormatting instance) =>
    <String, dynamic>{
      'main_text': instance.mainText,
      'secondary_text': instance.secondaryText,
    };

Term _$TermFromJson(Map<String, dynamic> json) {
  return Term(
    json['offset'] as int,
    json['value'] as String,
  );
}

Map<String, dynamic> _$TermToJson(Term instance) => <String, dynamic>{
      'offset': instance.offset,
      'value': instance.value,
    };
