import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weather_app/secret_key.dart';
import 'package:weather_app/utilies/addition_section.dart';
import 'package:weather_app/utilies/secondary_heading.dart';
import 'package:weather_app/utilies/theme_data.dart';
import 'package:weather_app/utilies/weather_card.dart';
import 'package:weather_app/utilies/weather_data.dart';
import 'package:weather_app/utilies/weather_listview.dart';
import 'package:http/http.dart' as http;

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  Future getCurrentWeather() async {
    try {
      String cityName = "London";
      final res = await http.post(
        Uri.parse(
            "http://api.openweathermap.org/data/2.5/forecast?q=$cityName&APPID=$WeatherAPIKey"),
      );
      final data = await jsonDecode(res.body);

      if (data["cod"] != '200') {
        throw 'An unexpected error occured';
      }
      WeatherData.weatherDataList = [];
      //* Weather List
      final weatherList = data["list"];

      //* Create a object for each Weather
      for (var i = 0; i < 8; i++) {
        WeatherData obj = WeatherData.map(weatherList[i]);
        WeatherData.weatherDataList.add(obj);
      }
      return WeatherData.weatherDataList;
    } catch (e) {
      throw e.toString();
    }
  }

  @override
  void initState() {
    super.initState();
    // getCurrentWeather();
  }

  void refreshData() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        elevation: 0.0,
        foregroundColor: const Color.fromARGB(204, 255, 255, 255),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {});
            },
            icon: const Icon(Icons.refresh),
          ),
          const SizedBox(
            width: 14.0,
          ),
        ],
        centerTitle: true,
        title: const Text(
          "Weather App",
          style: MyTheme.appBarTextStyle,
        ),
      ),
      body: FutureBuilder(
          future: getCurrentWeather(),
          builder: (context, snapshot) {
            if (snapshot.hasData && snapshot.data != []) {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WeatherCard(
                      weatherDataObj: snapshot.data[0],
                    ),
                    const SizedBox(
                      height: 12.0,
                    ),

                    //* Secondary Heading
                    const SecondaryHeading(heading: "Weather Forecast"),
                    const SizedBox(
                      height: 8,
                    ),

                    //* WeatherList
                    const SizedBox(
                      height: 110,
                      child: WeatherList(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),

                    //* Secondary Heading
                    const SecondaryHeading(heading: "Additional Features"),
                    const SizedBox(
                      height: 8,
                    ),

                    //* Additional Infomation
                    AdditionFeatureSection(
                      weatherDataObj: snapshot.data[0],
                    ),
                  ],
                ),
              );
            }
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            ));
          }),
    );
  }
}
