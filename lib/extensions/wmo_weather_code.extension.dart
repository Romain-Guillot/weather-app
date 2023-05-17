import 'package:weatherapp/core/enums/weather_code.enum.dart';

/// https://open-meteo.com/en/docs
extension WmoWeatherCodeExtension on int {
  WeatherCode? get code {
    return switch (this) {
      0 => WeatherCode.clearSky,
      1 || 2 || 3 => WeatherCode.partlyCloudy,
      45 || 48 => WeatherCode.fog,
      51 || 53 || 55 => WeatherCode.drizzle,
      56 || 57 => WeatherCode.freezingDrizzle,
      61 || 63 || 65 => WeatherCode.rain,
      66 || 67 => WeatherCode.freezingRain,
      71 || 73 || 75 => WeatherCode.snowFall,
      77 => WeatherCode.snowGrains,
      80 || 81 || 82 => WeatherCode.rain,
      85 || 86 => WeatherCode.snowShower,
      95 || 96 || 99 => WeatherCode.thunderstorm,
      _ => null,
    };
  }
}
