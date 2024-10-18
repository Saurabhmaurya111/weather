import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/components/custom_button.dart';
import 'package:weather_app/components/custom_textfield.dart';
import 'package:weather_app/controllers/weather_controller.dart';


class WeatherView extends StatelessWidget {
  final WeatherController weatherController = Get.put(WeatherController());
  final TextEditingController cityController = TextEditingController();

  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null) return 'assets/sunny.json';
    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return 'assets/clouds.json';
      case 'rain':
      case 'dizzle':
      case 'shower rain':
        return 'assets/rain.json';
      case 'thunderstrom':
        return 'assets/thunder.json';
      case 'clear':
        return 'assets/sunny.json';
      default:
        return 'assets/default.json';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Get.isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              // Toggles between light and dark mode
              Get.changeThemeMode(Get.isDarkMode ? ThemeMode.light : ThemeMode.dark);
            },
          ),
        ],
      ),
      backgroundColor: context.theme.scaffoldBackgroundColor, 
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomTextfiled(
                  controller: cityController,
                  hintText: 'Enter City Name',
                ),
                SizedBox(height: 10),
                CustomButton(
                    onTap: () {
                      String cityName = cityController.text;
                      if (cityName.isNotEmpty) {
                        weatherController.fetchWeather(cityName);
                      }
                    },
                    text: 'Get Weather'),
                SizedBox(height: 20),
                Center(
                  child: Obx(() {
                    if (weatherController.isLoading.value) {
                      return Center(child: CircularProgressIndicator());
                    }
                    if (weatherController.weatherData.isEmpty) {
                      return Text(
                        'Enter a city to see the weather',
                        style: TextStyle(color: context.theme.textTheme.bodyMedium?.color),
                      );
                    }

                    var weather = weatherController.weatherData['weather'][0];
                    var main = weatherController.weatherData['main'];
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        //city name
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '${weatherController.weatherData['name']}',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: context.theme.textTheme.bodyMedium?.color,
                              ),
                            ),
                            SizedBox(width: 20),
                            Icon(Icons.location_on, color: context.theme.textTheme.bodyMedium?.color),
                          ],
                        ),

                        // animation
                        Lottie.asset(
                          height: 300,
                          getWeatherAnimation('${weather['description']}'),
                        ),

                        // temperature
                        Text(
                          '${main['temp']}°C',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: context.theme.textTheme.bodyMedium?.color,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
