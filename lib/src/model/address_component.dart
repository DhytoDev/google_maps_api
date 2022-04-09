import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'address_component.g.dart';

@JsonSerializable()
class AddressComponent extends Equatable {
  @JsonKey(name: 'long_name')
  final String longName;
  @JsonKey(name: 'short_name')
  final String shortName;
  final List<String> types;

  AddressComponent(this.longName, this.shortName, this.types);

  factory AddressComponent.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentFromJson(json);

  Map<String, dynamic> toJson() => _$AddressComponentToJson(this);

  @override
  List<Object?> get props => [longName, shortName, types];
}
