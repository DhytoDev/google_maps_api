import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'geometry.g.dart';

@JsonSerializable()
class Location {
  @JsonKey(name: 'lat')
  final double? latitude;
  @JsonKey(name: 'lng')
  final double? longitude;

  Location(this.latitude, this.longitude);

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  @override
  String toString() => '$latitude,$longitude';
}

@JsonSerializable()
class Geometry extends Equatable {
  final Location? location;

  Geometry(this.location);

  factory Geometry.fromJson(Map<String, dynamic> json) =>
      _$GeometryFromJson(json);

  Map<String, dynamic> toJson() => _$GeometryToJson(this);

  @override
  List<Object?> get props => [location];
}
