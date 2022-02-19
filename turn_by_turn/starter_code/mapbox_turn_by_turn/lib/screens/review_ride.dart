import 'package:flutter/material.dart';
import 'package:mapbox_gl/mapbox_gl.dart';

import '../widgets/review_ride_bottom_sheet.dart';

class ReviewRide extends StatefulWidget {
  final Map modifiedResponse;
  const ReviewRide({Key? key, required this.modifiedResponse})
      : super(key: key);

  @override
  State<ReviewRide> createState() => _ReviewRideState();
}

class _ReviewRideState extends State<ReviewRide> {
  // Mapbox Maps SDK related

  // Directions API response related

  @override
  void initState() {
    // initialise distance, dropOffTime, geometry
    _initialiseDirectionsResponse();

    // initialise initialCameraPosition, address and trip end points

    super.initState();
  }

  _initialiseDirectionsResponse() {
    // initialise Direction API related variables
  }

  _onMapCreated(MapboxMapController controller) async {}

  _onStyleLoadedCallback() async {}

  _addSourceAndLineLayer() async {
    // Create a polyLine between source and destination

    // Add new source and lineLayer
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text('Review Ride'),
      ),
      body: SafeArea(
        child: Stack(
          children: [
            reviewRideBottomSheet(context, 'xy.z km', 'a:bc PM'),
          ],
        ),
      ),
    );
  }
}
