import 'package:flutter/material.dart';
import 'package:clima/screens/index.dart';
import 'package:clima/services/index.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const apiKey = '8db000b595c63976f763db8dd1c81528';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();

    latitude = location.latitude;
    longitude = location.longitude;

    print('Location: ${location.latitude}');

    var openWeatherUrl =
        'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey';

    NetworkHelper networkHelper = NetworkHelper(openWeatherUrl);

    var weatherData = await networkHelper.getData();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingFour(
          size: 50.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
