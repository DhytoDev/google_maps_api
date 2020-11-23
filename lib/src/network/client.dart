import 'package:chopper/chopper.dart';

ChopperClient getClient() {
  return ChopperClient(
    baseUrl: 'https://maps.googleapis.com/maps/api',
    services: [],
    converter: JsonConverter(),
    interceptors: [
      HttpLoggingInterceptor(),
    ],
  );
}
