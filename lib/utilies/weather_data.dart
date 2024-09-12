import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeatherData {
  static List<WeatherData> weatherDataList = [];

  final String temp;
  final String wind;
  final String presser;
  final String humidity;
  final String weatherStatus;
  final IconData iconData;
  final String dt;
  final String windspeed;

  WeatherData({
    required this.temp,
    required this.wind,
    required this.iconData,
    required this.presser,
    required this.humidity,
    required this.weatherStatus,
    required this.windspeed,
    required this.dt,
  });

  static convertUnixToReadable(int unixTimestamp) {
    // Convert Unix timestamp (seconds) to DateTime object (milliseconds)
    DateTime dateTime =
        DateTime.fromMillisecondsSinceEpoch(unixTimestamp * 1000);

    // Format DateTime using DateFormat
    String formattedDate = DateFormat('hh:mm').format(dateTime);

    return formattedDate;
  }

  factory WeatherData.map(Map map) {
    final temp = map["main"]["temp"];
    final humidity = map["main"]["humidity"];
    final presser = map["main"]["pressure"];
    final weatherStatus = map["weather"][0]["main"].toLowerCase();
    final dt = WeatherData.convertUnixToReadable(map["dt"]);
    final windspeed = map["wind"]["speed"];
    IconData iconData;

    if (weatherStatus == "rain") {
      iconData = Icons.thunderstorm;
    } else if (weatherStatus == "snow") {
      iconData = Icons.snowing;
    } else if (weatherStatus == "sunny") {
      iconData = Icons.sunny;
    } else {
      iconData = Icons.cloud;
    }
    return WeatherData(
      dt: dt.toString(),
      temp: temp.toString(),
      wind: windspeed.toString(),
      iconData: iconData,
      presser: presser.toString(),
      humidity: humidity.toString(),
      weatherStatus: weatherStatus.toString(),
      windspeed: windspeed.toString(),
    );
  }
}
