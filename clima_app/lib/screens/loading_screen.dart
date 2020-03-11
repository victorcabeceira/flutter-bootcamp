import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:clima/services/index.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print('Location: ${location.latitude}');
  }

  void getWeatherData() async {
    http.Response response = await http.get(
        'https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22');

    if (response.statusCode == 200) {
      String data = response.body;
      print('Data: $data');
    } else {
      print('StatusCode: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    getWeatherData();
    return Scaffold();
  }
}
