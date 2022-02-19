import 'package:flutter/material.dart';

import '../screens/review_ride.dart';

Widget reviewRideFaButton(BuildContext context) {
  return FloatingActionButton.extended(
      icon: const Icon(Icons.local_taxi),
      onPressed: () async {
        // Get directions API response and pass to modified response

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => const ReviewRide(modifiedResponse: {})));
      },
      label: const Text('Review Ride'));
}
