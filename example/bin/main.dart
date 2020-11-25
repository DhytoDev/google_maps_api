import 'package:google_maps_api/places.dart';
import 'package:logging/logging.dart';

void main() async {
  _setupLogging();

  final places = await Places.findNearbyPlaces(
    input: 'Helper',
    apiKey: 'YOUR API KEY HERE',
    radius: 50,
    location: Location(-5.1921861, 119.4807209),
  );

  print(places.status);
  print(places.predictions.map((e) => e.toJson().toString()).toList());
  print(places.predictions.first.terms.map((e) => e.toJson()).toList());
}

void _setupLogging() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((rec) {
    print(rec.message);
  });
}
