import 'package:google_maps_api/places.dart';
import 'package:logging/logging.dart';

void main() async {
  _setupLogging();

  final place = await Places.getPlaceDetails(
    placeId: 'ChIJOfNm3rjjvi0R5ZQlRAtIWLg',
    apiKey: 'YOUR API KEY HERE',
    language: 'id',
  );

  print(place.result.toJson());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print(rec.message);
  });
}
