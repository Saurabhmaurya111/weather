import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_app/views/weather_view.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: const Color.fromRGBO(244,248,255, 1),
  hintColor: Colors.grey[600],
  cardColor: Colors.black,
  
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.black),
  ),
);

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.black,
  scaffoldBackgroundColor: Colors.black,
   hintColor: Colors.black,
   cardColor: Colors.blue,
  textTheme: TextTheme(
    bodyMedium: TextStyle(color: Colors.white), 
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
      theme: lightTheme, // Light theme 
      darkTheme: darkTheme, // Dark theme 
      themeMode: ThemeMode.system,
      home:  WeatherView(),
    );
  }
}

