// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$PlaceService extends PlaceService {
  _$PlaceService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PlaceService;

  @override
  Future<Response<dynamic>> placeAutoComplete(Map<String, dynamic> query) {
    final Uri $url = Uri.parse('/place/autocomplete/json');
    final Map<String, dynamic> $params = query;
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> getPlaceDetails(Map<String, dynamic> query) {
    final Uri $url = Uri.parse('/place/details/json');
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
