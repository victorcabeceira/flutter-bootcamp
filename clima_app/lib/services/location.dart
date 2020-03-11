import 'package:geolocator/geolocator.dart';

class Location {
  Location({this.latitude, this.longitude});
  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      print('Position: $position');
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (exception) {
      print('Exception: $exception');
    }
  }
}
