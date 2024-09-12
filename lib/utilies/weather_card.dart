import 'package:flutter/material.dart';
import 'package:weather_app/utilies/theme_data.dart';
import 'package:weather_app/utilies/weather_data.dart';

class WeatherCard extends StatelessWidget {
  const WeatherCard({
    super.key,
    required this.weatherDataObj,
  });
  final WeatherData weatherDataObj;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Container(
        width: double.infinity,
        height: 180,
        decoration: MyTheme.decoration,
        // margin: const EdgeInsets.all(2.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${weatherDataObj.temp}\u00B0K",
              style: MyTheme.headingTextStyle,
            ),
            Icon(
              weatherDataObj.iconData,
              size: 72.0,
            ),
            Text(
              weatherDataObj.weatherStatus,
            ),
          ],
        ),
      ),
    );
  }
}
