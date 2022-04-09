import 'package:chopper/chopper.dart';

part 'geocoding_service.chopper.dart';

@ChopperApi(baseUrl: '/geocode')
abstract class GeocodingService extends ChopperService {
  static GeocodingService create([ChopperClient? client]) =>
      _$GeocodingService(client);

  @Get(path: '/json')
  Future<Response> findAddressFromCoordinate(
      @QueryMap() Map<String, dynamic> query);
}
