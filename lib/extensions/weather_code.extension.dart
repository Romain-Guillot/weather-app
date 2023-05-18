import 'package:flutter/material.dart';
import 'package:weatherapp/core/enums/weather_code.enum.dart';
import 'package:weatherapp/resources/resources.dart';

extension WeatherCodeExtension on WeatherCode {
  String label(BuildContext context) {
    return switch (this) {
      WeatherCode.clearSky => 'Clear sky',
      WeatherCode.partlyCloudy => 'Partly cloudy',
      WeatherCode.cloudy => 'Cloudy',
      WeatherCode.overcast => 'Overcast',
      WeatherCode.fog => 'Fog',
      WeatherCode.depositingRimeFog => 'Depositing rime fob',
      WeatherCode.lightDrizzle => 'Light drizzle',
      WeatherCode.moderateDrizzle => 'Moderate drizzle',
      WeatherCode.denseDrizzle => 'Dense drizzle',
      WeatherCode.freezingLightDrizzle => 'Freezing light drizzle',
      WeatherCode.freezingMediumDrizzle => 'Freezing moderate drizzle',
      WeatherCode.slightRain => 'Slight rain',
      WeatherCode.moderateRain => 'Moderate rain',
      WeatherCode.heavyRain => 'Heavy rain',
      WeatherCode.freezingLightRain => 'Freezing light rain',
      WeatherCode.freezingHeavyRain => 'Freezing heavy rain',
      WeatherCode.slightSnowFall => 'Slight snow fall',
      WeatherCode.moderateSnowFall => 'Moderate snow fall',
      WeatherCode.heavySnowFall => 'Heavy snow fall',
      WeatherCode.snowGrains => 'Snow grains',
      WeatherCode.slightRainShower => 'Slight rain showers',
      WeatherCode.moderateRainShower => 'Moderate rain showers',
      WeatherCode.violentRainShower => 'Violent rain shower',
      WeatherCode.slightSnowShowers => 'Slight snow showers',
      WeatherCode.heavySnownShowers => 'Heavy snow showers',
      WeatherCode.thunderstorm => 'Thunderstorm',
      WeatherCode.slightThunderstormWithHail => 'Thunderstorm with slight hail',
      WeatherCode.heavyThunderstromWithHail => 'Thunderstrom with heavy hail',
    };
  }

  String image(bool isDay) {
    return switch (this) {
      WeatherCode.clearSky => isDay ? Images.clearDay : Images.clearNight,
      WeatherCode.partlyCloudy => isDay ? Images.partlyCloudyDay : Images.partlyCloudyNight,
      WeatherCode.cloudy => isDay ? Images.cloudy : Images.partlyCloudyNight,
      WeatherCode.overcast => isDay ? Images.overcastDay : Images.overcastNight,
      WeatherCode.fog => isDay ? Images.fogDay : Images.fogNight,
      WeatherCode.depositingRimeFog => isDay ? Images.extremeDayFog : Images.extremeNightFog,
      WeatherCode.lightDrizzle => isDay ? Images.partlyCloudyDayDrizzle : Images.partlyCloudyNightDrizzle,
      WeatherCode.moderateDrizzle => isDay ? Images.overcastDrizzle : Images.overcastNightDrizzle,
      WeatherCode.denseDrizzle => isDay ? Images.extremeDrizzle : Images.extremeNightDrizzle,
      WeatherCode.freezingLightDrizzle => isDay ? Images.partlyCloudyDayHail : Images.partlyCloudyNightHail,
      WeatherCode.freezingMediumDrizzle => isDay ? Images.overcastDayHail : Images.overcastNightHail,
      WeatherCode.slightRain => isDay ? Images.rain : Images.partlyCloudyNightRain,
      WeatherCode.moderateRain => isDay ? Images.overcastRain : Images.overcastNightRain,
      WeatherCode.heavyRain => isDay ? Images.extremeRain : Images.extremeNightRain,
      WeatherCode.freezingLightRain => isDay ? Images.partlyCloudyDaySleet : Images.partlyCloudyNightSleet,
      WeatherCode.freezingHeavyRain => isDay ? Images.extremeSleet : Images.extremeNightSleet,
      WeatherCode.slightSnowFall => isDay ? Images.partlyCloudyDaySnow : Images.partlyCloudyNightSnow,
      WeatherCode.moderateSnowFall => isDay ? Images.overcastDaySnow : Images.overcastNightSnow,
      WeatherCode.heavySnowFall => isDay ? Images.extremeDaySnow : Images.extremeNightSnow,
      WeatherCode.snowGrains => isDay ? Images.extremeDaySnow : Images.extremeNightSnow,
      WeatherCode.slightRainShower => isDay ? Images.partlyCloudyDaySleet : Images.partlyCloudyNightSleet,
      WeatherCode.moderateRainShower => isDay ? Images.overcastSleet : Images.overcastNightSleet,
      WeatherCode.violentRainShower => isDay ? Images.extremeSleet : Images.extremeNightSleet,
      WeatherCode.slightSnowShowers => isDay ? Images.partlyCloudyDaySnow : Images.partlyCloudyNightSnow,
      WeatherCode.heavySnownShowers => isDay ? Images.extremeDaySnow : Images.extremeNightSnow,
      WeatherCode.thunderstorm => isDay ? Images.thunderstormsOvercast : Images.thunderstormsNightOvercast,
      WeatherCode.slightThunderstormWithHail => isDay ? Images.thunderstormsSnow : Images.thunderstormsSnow,
      WeatherCode.heavyThunderstromWithHail => isDay ? Images.thunderstormsExtremeSnow : Images.thunderstormsNightExtremeSnow,
    };
  }
}
