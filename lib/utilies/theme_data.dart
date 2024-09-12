import 'package:flutter/material.dart';

class MyTheme {
  static final ThemeData lightTheme = ThemeData.light(
    useMaterial3: true,
  );
  static final ThemeData darkTheme = ThemeData.dark(
    useMaterial3: true,
  );

  static const fs500 = 500;

  static const appBarTextStyle = TextStyle(
    // color: Color.fromARGB(204, 255, 136, 136),
    fontWeight: FontWeight.bold,
  );

  static const headingTextStyle = TextStyle(
    fontSize: 34.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static final decoration = BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: const Color.fromARGB(188, 31, 27, 27).withOpacity(0.3),
    backgroundBlendMode: BlendMode.overlay,
  );
}
