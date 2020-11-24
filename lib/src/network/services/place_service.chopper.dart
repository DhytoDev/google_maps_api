// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$PlaceService extends PlaceService {
  _$PlaceService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = PlaceService;

  @override
  Future<Response<dynamic>> placeAutoComplete(
      {String input,
      String apiKey,
      String location,
      String origin,
      num radius,
      String language}) {
    final $url = '/place/autocomplete/json';
    final $params = <String, dynamic>{
      'input': input,
      'key': apiKey,
      'location': location,
      'origin': origin,
      'radius': radius,
      'language': language
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
