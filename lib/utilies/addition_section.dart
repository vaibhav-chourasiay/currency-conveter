import 'package:flutter/material.dart';
import 'package:weather_app/utilies/feature_card.dart';
import 'package:weather_app/utilies/weather_data.dart';

class AdditionFeatureSection extends StatelessWidget {
  const AdditionFeatureSection({
    super.key,
    required this.weatherDataObj,
  });
  final WeatherData weatherDataObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FeatureCard(
          iconData: Icons.water_drop,
          title: "Humitdiy",
          value: weatherDataObj.humidity,
        ),
        FeatureCard(
          iconData: Icons.air,
          title: "Wind Speed",
          value: weatherDataObj.wind,
        ),
        FeatureCard(
          iconData: Icons.umbrella,
          title: "Presser",
          value: weatherDataObj.presser,
        ),
      ],
    );
  }
}
