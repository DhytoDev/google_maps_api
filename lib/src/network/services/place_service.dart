import 'package:chopper/chopper.dart';
import 'package:meta/meta.dart';

part 'place_service.chopper.dart';

@ChopperApi(baseUrl: '/place')
abstract class PlaceService extends ChopperService {
  static PlaceService create([ChopperClient client]) => _$PlaceService(client);

  @Get(path: 'autocomplete/json')
  Future<Response> placeAutoComplete({
    @Query('input') @required String input,
    @Query('key') @required String apiKey,
    @Query('location') String location,
    @Query('origin') String origin,
    @Query('radius') num radius,
    @Query('language') String language,
  });
}
