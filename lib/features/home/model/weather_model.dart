class WeatherModel {
  final String timeRange;
  final int temperature;
  final String weatherIcon;
  final String thermometerIcon;
  final String wind;
  final double irradiation;

  WeatherModel({
    required this.timeRange,
    required this.temperature,
    required this.weatherIcon,
    required this.thermometerIcon,
    required this.wind,
    required this.irradiation,
  });

  factory WeatherModel.empty() => WeatherModel(
    timeRange: '',
    temperature: 0,
    weatherIcon: '',
    thermometerIcon: '',
    wind: '',
    irradiation: 0,
  );
}
