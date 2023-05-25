// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$GeocodingService extends GeocodingService {
  _$GeocodingService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = GeocodingService;

  @override
  Future<Response<dynamic>> findAddressFromCoordinate(
      Map<String, dynamic> query) {
    final Uri $url = Uri.parse('/geocode/json');
    final Map<String, dynamic> $params = query;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
