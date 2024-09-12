import 'package:flutter/material.dart';
import 'package:weather_app/utilies/theme_data.dart';

class ForcastCard extends StatelessWidget {
  const ForcastCard({
    super.key,
    required this.temp,
    required this.iconData,
    required this.time,
  });

  final String temp;
  final IconData iconData;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8.0,
      child: Container(
        width: 90,
        decoration: MyTheme.decoration,
        margin: const EdgeInsets.all(4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              time,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Icon(
              iconData,
              size: 24.0,
            ),
            Text(
              temp,
            ),
          ],
        ),
      ),
    );
  }
}
