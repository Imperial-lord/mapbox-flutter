import 'dart:convert';

import 'package:mapbox_gl/mapbox_gl.dart';

import '../requests/mapbox_directions.dart';
import '../requests/mapbox_rev_geocoding.dart';
import '../requests/mapbox_search.dart';

// ----------------------------- Mapbox Search Query -----------------------------
String getValidatedQueryFromQuery(String query) {
  // Remove whitespaces
  String validatedQuery = query.trim();
  return validatedQuery;
}

Future<List> getParsedResponseForQuery(String value) async {
  List parsedResponses = [];

  // If empty query send blank response
  String query = getValidatedQueryFromQuery(value);
  if (query == '') return parsedResponses;

  // Else search and then send response
  var response = json.decode(await getSearchResultsFromQueryUsingMapbox(query));

  List features = response['features'];
  for (var feature in features) {
    Map response = {
      'name': feature['text'],
      'address': feature['place_name'].split('${feature['text']}, ')[1],
      'place': feature['place_name'],
      'location': LatLng(feature['center'][1], feature['center'][0])
    };
    parsedResponses.add(response);
  }
  return parsedResponses;
}

// ----------------------------- Mapbox Reverse Geocoding -----------------------------
Future<Map> getParsedReverseGeocoding(LatLng latLng) async {
  var response =
      json.decode(await getReverseGeocodingGivenLatLngUsingMapbox(latLng));
  Map feature = response['features'][0];
  Map revGeocode = {
    'name': feature['text'],
    'address': feature['place_name'].split('${feature['text']}, ')[1],
    'place': feature['place_name'],
    'location': latLng
  };
  return revGeocode;
}

// ----------------------------- Mapbox Directions API -----------------------------
Future<Map> getDirectionsAPIResponse(
    LatLng sourceLatLng, LatLng destinationLatLng) async {
  final response =
      await getCyclingRouteUsingMapbox(sourceLatLng, destinationLatLng);
  Map geometry = response['routes'][0]['geometry'];
  num duration = response['routes'][0]['duration'];
  num distance = response['routes'][0]['distance'];

  Map modifiedResponse = {
    "geometry": geometry,
    "duration": duration,
    "distance": distance,
  };
  return modifiedResponse;
}

LatLng getCenterCoordinatesForPolyline(Map geometry) {
  List coordinates = geometry['coordinates'];
  int pos = (coordinates.length / 2).round();
  return LatLng(coordinates[pos][1], coordinates[pos][0]);
}
