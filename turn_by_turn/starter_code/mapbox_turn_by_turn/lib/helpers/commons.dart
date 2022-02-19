import 'package:intl/intl.dart';

String getDropOffTime(num duration) {
  int minutes = (duration / 60).round();
  int seconds = (duration % 60).round();
  DateTime tripEndDateTime =
      DateTime.now().add(Duration(minutes: minutes, seconds: seconds));
  String dropOffTime = DateFormat.jm().format(tripEndDateTime);
  return dropOffTime;
}
