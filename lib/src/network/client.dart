import 'package:chopper/chopper.dart';

ChopperClient getClient() {
  return ChopperClient(
    baseUrl: Uri.parse('https://maps.googleapis.com/maps/api'),
    converter: JsonConverter(),
    interceptors: [
      HttpLoggingInterceptor(),
    ],
  );
}
