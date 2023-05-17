import 'package:flutter/material.dart';
import 'package:weatherapp/core/enums/weather_code.enum.dart';
import 'package:weatherapp/resources/resources.dart';

extension WeatherCodeExtension on WeatherCode {
  String label(BuildContext context) {
    return switch (this) {
      WeatherCode.clearSky => 'Clear sky',
      WeatherCode.drizzle => 'Drizzle',
      WeatherCode.fog => 'Fog',
      WeatherCode.freezingDrizzle => 'Freezing drizzle',
      WeatherCode.freezingRain => 'Freezing rain',
      WeatherCode.partlyCloudy => 'Partly cloudy',
      WeatherCode.rain => 'Rain',
      WeatherCode.rainShowers => 'Rain showers',
      WeatherCode.snowFall => 'Snow fall',
      WeatherCode.snowGrains => 'Snow grains',
      WeatherCode.snowShower => 'Snow shower',
      WeatherCode.thunderstorm => 'Thunderstorm',
    };
  }

  String get image {
    return switch (this) {
      WeatherCode.clearSky => Images.sun,
      WeatherCode.drizzle => Images.sunRainCloud,
      WeatherCode.fog => Images.fog,
      WeatherCode.freezingDrizzle => Images.cloudRain,
      WeatherCode.freezingRain => Images.cloudRain,
      WeatherCode.partlyCloudy => Images.sunSmallCloud,
      WeatherCode.rain => Images.cloudRain,
      WeatherCode.rainShowers => Images.cloudRain,
      WeatherCode.snowFall => Images.cloudSnow,
      WeatherCode.snowGrains => Images.cloudSnow,
      WeatherCode.snowShower => Images.cloudSnow,
      WeatherCode.thunderstorm => Images.tornado,
    };
  }
}
