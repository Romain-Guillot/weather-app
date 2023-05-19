import 'package:flutter/material.dart';
import 'package:weatherapp/core/enums/weather_code.enum.dart';
import 'package:weatherapp/extensions/context.extension.dart';
import 'package:weatherapp/resources/resources.dart';

extension WeatherCodeExtension on WeatherCode {
  String label(BuildContext context) {
    return switch (this) {
      WeatherCode.clearSky => context.strings.clearSky,
      WeatherCode.partlyCloudy => context.strings.partlyCloudy,
      WeatherCode.cloudy => context.strings.cloudy,
      WeatherCode.overcast => context.strings.overcast,
      WeatherCode.fog => context.strings.fog,
      WeatherCode.depositingRimeFog => context.strings.depositingRimeFog,
      WeatherCode.lightDrizzle => context.strings.lightDrizzle,
      WeatherCode.moderateDrizzle => context.strings.moderateDrizzle,
      WeatherCode.denseDrizzle => context.strings.denseDrizzle,
      WeatherCode.freezingLightDrizzle => context.strings.freezingLightDrizzle,
      WeatherCode.freezingMediumDrizzle => context.strings.freezingMediumDrizzle,
      WeatherCode.slightRain => context.strings.slightRain,
      WeatherCode.moderateRain => context.strings.moderateRain,
      WeatherCode.heavyRain => context.strings.heavyRain,
      WeatherCode.freezingLightRain => context.strings.freezingLightRain,
      WeatherCode.freezingHeavyRain => context.strings.freezingHeavyRain,
      WeatherCode.slightSnowFall => context.strings.slightSnowFall,
      WeatherCode.moderateSnowFall => context.strings.moderateSnowFall,
      WeatherCode.heavySnowFall => context.strings.heavySnowFall,
      WeatherCode.snowGrains => context.strings.snowGrains,
      WeatherCode.slightRainShower => context.strings.slightRainShower,
      WeatherCode.moderateRainShower => context.strings.moderateRainShower,
      WeatherCode.violentRainShower => context.strings.violentRainShower,
      WeatherCode.slightSnowShowers => context.strings.slightSnowShowers,
      WeatherCode.heavySnownShowers => context.strings.heavySnowShowers,
      WeatherCode.thunderstorm => context.strings.thunderstorm,
      WeatherCode.slightThunderstormWithHail => context.strings.slightThunderstormWithHail,
      WeatherCode.heavyThunderstromWithHail => context.strings.heavyThunderstromWithHail,
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
