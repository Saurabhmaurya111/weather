import 'package:get/get.dart';
import 'package:weather_app/services/weather_service.dart';

class WeatherController extends GetxController {
  var isLoading = false.obs;
  var weatherData = {}.obs;

  WeatherService weatherService = WeatherService();

  void fetchWeather(String cityName) async {
    try {
      isLoading(true);
      var data = await weatherService.getWeather(cityName);
      weatherData.value = data;
    } catch (e) {
      Get.snackbar('Error', 'This City Does NOT Exist');
    } finally {
      isLoading(false);
    }
  }
}
