import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/views/weather_view.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.black), // Replaced bodyText2 with bodyMedium
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.white), // Replaced bodyText2 with bodyMedium
  ),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

   
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: lightTheme, // Light theme defined above
      darkTheme: darkTheme, // Dark theme defined above
      themeMode: ThemeMode.system,
      home:  WeatherView(),
    );
  }
}

