import 'package:get/get.dart';
import '../../../core/assets/images/weather_icons.dart';
import '../model/weather_model.dart';

class HomeController extends GetxController {
  final currentWeather = WeatherModel.empty().obs;

  @override
  void onInit() {
    super.onInit();
    updateWeather();
  }

  void updateWeather() {
    final hour = DateTime.now().hour;

    if (hour >= 6 && hour < 12) {
      currentWeather.value = WeatherModel(
        timeRange: '11:00 am - 12:00 pm',
        temperature: 17,
        weatherIcon: WeatherIcons.cloudSun,
        thermometerIcon: WeatherIcons.thermoBlue,
        wind: '26 MPH / NW',
        irradiation: 15.20,
      );
    } else if (hour >= 12 && hour < 18) {
      currentWeather.value = WeatherModel(
        timeRange: '12:00 pm - 01:00 pm',
        temperature: 30,
        weatherIcon: WeatherIcons.sun,
        thermometerIcon: WeatherIcons.thermoRed,
        wind: '26 MPH / NW',
        irradiation: 15.20,
      );
    } else {
      currentWeather.value = WeatherModel(
        timeRange: '02:30 pm - 03:30 pm',
        temperature: 19,
        weatherIcon: WeatherIcons.moon,
        thermometerIcon: WeatherIcons.thermoCyan,
        wind: '26 MPH / NW',
        irradiation: 15.20,
      );
    }
  }
}
