import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

class RestaurantsMap extends StatefulWidget {
  const RestaurantsMap({Key? key}) : super(key: key);

  @override
  State<RestaurantsMap> createState() => _RestaurantsMapState();
}

class _RestaurantsMapState extends State<RestaurantsMap> {
  // Mapbox related

  // Carousel related

  @override
  void initState() {
    super.initState();

    // Calculate the distance and time from data in SharedPreferences

    // Generate the list of carousel widgets

    // initialize map symbols in the same order as carousel widgets
  }

  _addSourceAndLineLayer(int index, bool removeLayer) async {
    // Can animate camera to focus on the item

    // Add a polyLine between source and destination

    // Remove lineLayer and source if it exists

    // Add new source and lineLayer
  }

  _onMapCreated(MapboxMapController controller) async {}

  _onStyleLoadedCallback() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Restaurants Map'),
      ),
      body: const SafeArea(
        child: Center(
          child: Text('Let\'s build something awesome 💪🏻'),
        ),
      ),
    );
  }
}
