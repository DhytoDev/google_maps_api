import 'package:chopper/chopper.dart';

part 'place_service.chopper.dart';

@ChopperApi(baseUrl: '/place')
abstract class PlaceService extends ChopperService {
  static PlaceService create([ChopperClient? client]) => _$PlaceService(client);

  @Get(path: 'autocomplete/json')
  Future<Response> placeAutoComplete(
    @QueryMap() Map<String, dynamic> query,
  );

  @Get(path: 'details/json')
  Future<Response> getPlaceDetails(
    @QueryMap() Map<String, dynamic> query,
  );
}
