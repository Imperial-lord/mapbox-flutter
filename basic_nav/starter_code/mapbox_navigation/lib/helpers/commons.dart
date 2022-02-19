import 'package:mapbox_gl/mapbox_gl.dart';

import '../constants/restaurants.dart';

LatLng getLatLngFromRestaurantData(int index) {
  return LatLng(double.parse(restaurants[index]['coordinates']['latitude']),
      double.parse(restaurants[index]['coordinates']['longitude']));
}
