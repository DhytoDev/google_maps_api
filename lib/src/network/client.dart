import 'package:chopper/chopper.dart';
import 'package:google_maps_api/src/network/services/place_service.dart';

ChopperClient getClient() {
  return ChopperClient(
    baseUrl: 'https://maps.googleapis.com/maps/api',
    services: [
      PlaceService.create(),
    ],
    converter: JsonConverter(),
    interceptors: [
      HttpLoggingInterceptor(),
    ],
  );
}
