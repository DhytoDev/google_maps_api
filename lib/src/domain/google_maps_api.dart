import 'package:google_maps_api/src/network/services/geocoding_service.dart';

import '../network/client.dart';
import '../network/services/place_service.dart';

abstract class GoogleMapsApi {
  static PlaceService placeService = PlaceService.create(getClient());
  static GeocodingService geocodingService =
      GeocodingService.create(getClient());
}
