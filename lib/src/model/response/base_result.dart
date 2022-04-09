import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import '../address_component.dart';
import '../geometry.dart';

abstract class BaseResult extends Equatable {
  const BaseResult(
    this.addressComponents,
    this.formattedAddress,
    this.geometry,
    this.placeId,
    this.types,
  );

  @JsonKey(name: 'address_components')
  final List<AddressComponent?>? addressComponents;
  @JsonKey(name: 'formatted_address')
  final String? formattedAddress;
  final Geometry? geometry;
  @JsonKey(name: 'place_id')
  final String? placeId;
  final List<String>? types;

  @override
  List<Object?> get props =>
      [addressComponents, formattedAddress, geometry, placeId, types];

  @override
  bool? get stringify => true;
}
