import 'package:flutter/material.dart';
import 'package:weather_app/pages/weather_screen.dart';
import 'package:weather_app/utilies/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Weather App",
      debugShowCheckedModeBanner: false,
      home: const WeatherScreen(),
      theme: MyTheme.darkTheme.copyWith(
          appBarTheme: const AppBarTheme(
              // backgroundColor: Color.fromARGB(255, 228, 143, 143),
              )),
    );
  }
}
