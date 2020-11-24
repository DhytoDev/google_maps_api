import 'network/client.dart';
import 'network/services/place_service.dart';

abstract class GoogleMapsApi {
  static PlaceService placeService = PlaceService.create(getClient());
}
