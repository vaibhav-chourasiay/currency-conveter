import 'package:flutter/material.dart';

class SecondaryHeading extends StatelessWidget {
  const SecondaryHeading({
    super.key,
    required this.heading,
  });
  final String heading;

  @override
  Widget build(BuildContext context) {
    return Text(
      heading,
      style: const TextStyle(
        color: Color.fromARGB(127, 255, 255, 255),
        fontSize: 16.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
