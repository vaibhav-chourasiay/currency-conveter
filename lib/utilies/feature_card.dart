import 'package:flutter/material.dart';

class FeatureCard extends StatelessWidget {
  const FeatureCard(
      {super.key,
      required this.iconData,
      required this.value,
      required this.title,
      this.a = ""});
  final IconData iconData;
  final String value;
  final String title;
  final String? a;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              iconData,
              size: 24.0,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Color.fromARGB(122, 255, 255, 255),
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              value,
              style:
                  const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
