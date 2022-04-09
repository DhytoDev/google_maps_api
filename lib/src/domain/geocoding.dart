import 'dart:io';

import 'package:google_maps_api/google_maps_api.dart';
import 'package:google_maps_api/src/model/model.dart';

import '../model/response/geocoding_result.dart';

class Geocoding extends GoogleMapsApi {
  static Future<GeocodingResult> findAddressFromCoordinate(
      {required String latlng, required String? apiKey}) async {
    final response =
        await GoogleMapsApi.geocodingService.findAddressFromCoordinate(
      QueryParams(
        latlng: latlng,
        apiKey: apiKey,
      ).toJson(),
    );

    if (response.isSuccessful) {
      final result = GeocodingResult.fromJson(response.body);

      if (result.isOkay) return result;

      throw HttpException(result.errorMessage.toString());
    }

    throw HttpException(response.error.toString());
  }
}
