import 'package:weatherapp/core/enums/weather_code.enum.dart';

/// https://open-meteo.com/en/docs
extension WmoWeatherCodeExtension on int {
  WeatherCode? get code {
    return switch (this) {
      0 => WeatherCode.clearSky,
      1 => WeatherCode.partlyCloudy,
      2 => WeatherCode.cloudy,
      3 => WeatherCode.overcast,
      45 => WeatherCode.fog,
      48 => WeatherCode.depositingRimeFog,
      51 => WeatherCode.lightDrizzle,
      53 => WeatherCode.moderateDrizzle,
      55 => WeatherCode.denseDrizzle,
      56 => WeatherCode.freezingLightDrizzle,
      57 => WeatherCode.freezingMediumDrizzle,
      61 => WeatherCode.slightRain,
      63 => WeatherCode.moderateRain,
      65 => WeatherCode.heavyRain,
      66 => WeatherCode.freezingLightRain,
      67 => WeatherCode.freezingHeavyRain,
      71 => WeatherCode.slightSnowFall,
      73 => WeatherCode.moderateSnowFall,
      75 => WeatherCode.heavySnowFall,
      77 => WeatherCode.snowGrains,
      80 => WeatherCode.slightRainShower,
      81 => WeatherCode.moderateRainShower,
      82 => WeatherCode.violentRainShower,
      85 => WeatherCode.slightSnowShowers,
      86 => WeatherCode.heavySnownShowers,
      95 => WeatherCode.thunderstorm,
      96 => WeatherCode.slightThunderstormWithHail,
      99 => WeatherCode.heavyThunderstromWithHail,
      _ => null,
    };
  }
}
