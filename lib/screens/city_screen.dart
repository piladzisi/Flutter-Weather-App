import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';
import 'location_screen.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LocationScreen();
                        },
                      ),
                    );
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                    style: TextStyle(color: Colors.black87),
                    textAlign: TextAlign.center,
                    decoration: kTextInputDecoration,
                    onChanged: (value) {
                      print(value);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              OutlineButton(
                highlightedBorderColor: Colors.grey,
                borderSide: BorderSide(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 2,
                ),
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Get Weather',
                    style: kButtonTextStyle,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
