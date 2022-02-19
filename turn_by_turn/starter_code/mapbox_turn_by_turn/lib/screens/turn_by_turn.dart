import 'package:flutter/material.dart';
import 'package:mapbox_turn_by_turn/ui/rate_ride.dart';

class TurnByTurn extends StatefulWidget {
  const TurnByTurn({Key? key}) : super(key: key);

  @override
  State<TurnByTurn> createState() => _TurnByTurnState();
}

class _TurnByTurnState extends State<TurnByTurn> {
  // Waypoints to mark trip start and end

  // Config variables for Mapbox Navigation

  @override
  void initState() {
    super.initState();
    initialize();
  }

  Future<void> initialize() async {
    if (!mounted) return;

    // Setup directions and options

    // Configure waypoints

    // Start the trip
  }

  @override
  Widget build(BuildContext context) {
    return const RateRide();
  }
}
