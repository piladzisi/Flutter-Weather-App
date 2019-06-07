import 'package:flutter/material.dart';
import 'package:clima/services/weather.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(locationWeather: weatherData);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('images/city.jpg'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.6), BlendMode.dstATop),
        ),
      ),
      constraints: BoxConstraints.expand(),
      child: Center(
        child: SpinKitCircle(
          color: Colors.white,
          size: 70.0,
        ),
      ),
    ));
  }
}

//
//Alert(
//context: context,
//title: "Unable to get weather",
//desc: "Make sure you have internet connection",
//buttons: [
//DialogButton(
//child: Text(
//"OK",
//style: TextStyle(
//color: Colors.white, fontSize: 20),
//),
//onPressed: () => Navigator.pop(context),
//width: 120,
//),
//]).show();
