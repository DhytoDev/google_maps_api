import 'dart:io';

import '../model/model.dart';
import 'google_maps_api.dart';

class Places extends GoogleMapsApi {
  static Future<PlacesAutocompleteResult> findNearbyPlaces({
    required String? input,
    required String? apiKey,
    required num? radius,
    required Location? location,
    Location? origin,
    String? language,
  }) async {
    final response = await GoogleMapsApi.placeService.placeAutoComplete(
      QueryParams(
        input: input,
        apiKey: apiKey,
        radius: radius,
        location: location?.toString(),
        origin: origin?.toString(),
        language: language,
      ).toJson(),
    );

    if (response.isSuccessful) {
      final result = PlacesAutocompleteResult.fromJson(response.body);

      if (result.isOkay) return result;

      throw HttpException(result.errorMessage.toString());
    }

    throw HttpException(response.error.toString());
  }

  static Future<PlaceDetailsResult> getPlaceDetails({
    required String? placeId,
    required String? apiKey,
    String? language,
  }) async {
    final response = await GoogleMapsApi.placeService.getPlaceDetails(
      QueryParams(
        placeId: placeId,
        apiKey: apiKey,
        language: language,
      ).toJson(),
    );

    if (response.isSuccessful) {
      final result = PlaceDetailsResult.fromJson(response.body);

      if (result.isOkay) return result;

      throw HttpException(result.errorMessage!);
    }

    throw HttpException(response.error.toString());
  }
}
