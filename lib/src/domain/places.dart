import 'dart:io';

import 'package:google_maps_api/src/model/response/places_detail_result.dart';

import 'google_maps_api.dart';
import 'package:meta/meta.dart';

import '../model/model.dart';

class Places extends GoogleMapsApi {
  static Future<PlacesAutocompleteResult> findNearbyPlaces({
    @required String input,
    @required String apiKey,
    @required num radius,
    @required Location location,
    Location origin,
    String language,
  }) async {
    final response = await GoogleMapsApi.placeService.placeAutoComplete(
      QueryParams(
        input: input,
        apiKey: apiKey,
        radius: radius,
        location: location?.toString(),
        origin: origin?.toString(),
        languange: language,
      ).toJson(),
    );

    if (response.isSuccessful) {
      return PlacesAutocompleteResult.fromJson(response.body);
    }

    throw HttpException(response.error);
  }

  static Future<PlaceDetailResult> getPlaceDetails({
    @required String placeId,
    @required String apiKey,
    String language,
  }) async {
    final response = await GoogleMapsApi.placeService.getPlaceDetails(
      QueryParams(
        placeId: placeId,
        apiKey: apiKey,
        languange: language,
      ).toJson(),
    );

    if (response.isSuccessful) return PlaceDetailResult.fromJson(response.body);

    throw HttpException(response.error);
  }
}
