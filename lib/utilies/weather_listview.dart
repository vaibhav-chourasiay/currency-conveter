import 'package:flutter/material.dart';
import 'package:weather_app/utilies/forcast_card.dart';
import 'package:weather_app/utilies/weather_data.dart';

class WeatherList extends StatelessWidget {
  const WeatherList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: WeatherData.weatherDataList.length,
        itemBuilder: (context, index) {
          final data = WeatherData.weatherDataList[index];
          return ForcastCard(
              temp: data.temp, iconData: data.iconData, time: data.dt);
        });

    // return ListView(
    //   scrollDirection: Axis.horizontal,
    //   children: const [
    //     ForcastCard(
    //       temp: "303",
    //       iconData: Icons.thunderstorm,
    //       time: "10:00",
    //     ),
    //     ForcastCard(
    //       temp: "87.90",
    //       time: "11:00",
    //       iconData: Icons.sunny,
    //     ),
    //     ForcastCard(
    //       temp: "87.90",
    //       time: "23:00",
    //       iconData: Icons.sunny,
    //     ),
    //     ForcastCard(
    //       temp: "87.90",
    //       time: "01:00",
    //       iconData: Icons.sunny,
    //     ),
    //     ForcastCard(
    //       temp: "87.90",
    //       time: "03:04",
    //       iconData: Icons.sunny,
    //     ),
    //     ForcastCard(
    //       temp: "87.90",
    //       time: "02:03",
    //       iconData: Icons.sunny,
    //     ),
    //   ],
    // );
  }
}
