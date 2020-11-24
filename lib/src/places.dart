import 'dart:io';

import 'google_maps_api.dart';
import 'package:meta/meta.dart';

import 'model/model.dart';

class Places extends GoogleMapsApi {
  static Future<PlacesAutocompleteResult> findNearbyPlaces({
    @required String input,
    @required String apiKey,
    @required num radius,
    @required Location location,
    Location origin,
  }) async {
    final response = await GoogleMapsApi.placeService.placeAutoComplete(
      query: PlaceAutoCompleteRequest(
        input: input,
        apiKey: apiKey,
        radius: radius,
        location: location?.toString(),
        origin: origin?.toString(),
      ).toJson(),
    );

    if (response.isSuccessful) {
      return PlacesAutocompleteResult.fromJson(response.body);
    }

    throw HttpException(response.error.toString());
  }
}
