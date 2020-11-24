import 'dart:io';

import 'package:google_maps_api/src/model/location.dart';
import 'package:google_maps_api/src/model/places_autocomplete_result.dart';
import 'package:google_maps_api/src/network/services/place_service.dart';

import 'network/client.dart';
import 'package:meta/meta.dart';

class Places {
  static PlaceService _placeService;

  Places() {
    _placeService = PlaceService.create(getClient());
  }

  static Future<PlacesAutocompleteResult> findNearbyPlaces({
    @required String input,
    @required String apiKey,
    @required num radius,
    @required Location location,
    Location origin,
  }) async {
    final response = await _placeService.placeAutoComplete(
        input: input,
        apiKey: apiKey,
        radius: radius,
        location: location.toString(),
        origin: origin.toString());

    if (response.isSuccessful) {
      return PlacesAutocompleteResult.fromJson(response.body);
    }

    throw HttpException('network failed');
  }
}
