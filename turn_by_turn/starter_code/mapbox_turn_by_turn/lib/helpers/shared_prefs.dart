import 'dart:convert';

import 'package:mapbox_gl/mapbox_gl.dart';

import '../main.dart';

LatLng getCurrentLatLngFromSharedPrefs() {
  return LatLng(sharedPreferences.getDouble('latitude')!,
      sharedPreferences.getDouble('longitude')!);
}

String getCurrentAddressFromSharedPrefs() {
  return sharedPreferences.getString('current-address')!;
}

LatLng getTripLatLngFromSharedPrefs(String type) {
  List sourceLocationList =
      json.decode(sharedPreferences.getString('source')!)['location'];
  List destinationLocationList =
      json.decode(sharedPreferences.getString('destination')!)['location'];
  LatLng source = LatLng(sourceLocationList[0], sourceLocationList[1]);
  LatLng destination =
      LatLng(destinationLocationList[0], destinationLocationList[1]);

  if (type == 'source') {
    return source;
  } else {
    return destination;
  }
}

String getSourceAndDestinationPlaceText(String type) {
  String sourceAddress =
      json.decode(sharedPreferences.getString('source')!)['name'];
  String destinationAddress =
      json.decode(sharedPreferences.getString('destination')!)['name'];

  if (type == 'source') {
    return sourceAddress;
  } else {
    return destinationAddress;
  }
}
