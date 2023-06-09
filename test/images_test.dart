import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:weatherapp/resources/resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.alertAvalancheDanger).existsSync(), true);
    expect(File(Images.alertFallingRocks).existsSync(), true);
    expect(File(Images.barometer).existsSync(), true);
    expect(File(Images.beanie).existsSync(), true);
    expect(File(Images.celsius).existsSync(), true);
    expect(File(Images.clearDay).existsSync(), true);
    expect(File(Images.clearNight).existsSync(), true);
    expect(File(Images.cloudDown).existsSync(), true);
    expect(File(Images.cloudUp).existsSync(), true);
    expect(File(Images.cloudy).existsSync(), true);
    expect(File(Images.codeGreen).existsSync(), true);
    expect(File(Images.codeOrange).existsSync(), true);
    expect(File(Images.codeRed).existsSync(), true);
    expect(File(Images.codeYellow).existsSync(), true);
    expect(File(Images.compass).existsSync(), true);
    expect(File(Images.drizzle).existsSync(), true);
    expect(File(Images.dustDay).existsSync(), true);
    expect(File(Images.dustNight).existsSync(), true);
    expect(File(Images.dustWind).existsSync(), true);
    expect(File(Images.dust).existsSync(), true);
    expect(File(Images.extremeDayDrizzle).existsSync(), true);
    expect(File(Images.extremeDayFog).existsSync(), true);
    expect(File(Images.extremeDayHail).existsSync(), true);
    expect(File(Images.extremeDayHaze).existsSync(), true);
    expect(File(Images.extremeDayRain).existsSync(), true);
    expect(File(Images.extremeDaySleet).existsSync(), true);
    expect(File(Images.extremeDaySmoke).existsSync(), true);
    expect(File(Images.extremeDaySnow).existsSync(), true);
    expect(File(Images.extremeDay).existsSync(), true);
    expect(File(Images.extremeDrizzle).existsSync(), true);
    expect(File(Images.extremeFog).existsSync(), true);
    expect(File(Images.extremeHail).existsSync(), true);
    expect(File(Images.extremeHaze).existsSync(), true);
    expect(File(Images.extremeNightDrizzle).existsSync(), true);
    expect(File(Images.extremeNightFog).existsSync(), true);
    expect(File(Images.extremeNightHail).existsSync(), true);
    expect(File(Images.extremeNightHaze).existsSync(), true);
    expect(File(Images.extremeNightRain).existsSync(), true);
    expect(File(Images.extremeNightSleet).existsSync(), true);
    expect(File(Images.extremeNightSmoke).existsSync(), true);
    expect(File(Images.extremeNightSnow).existsSync(), true);
    expect(File(Images.extremeNight).existsSync(), true);
    expect(File(Images.extremeRain).existsSync(), true);
    expect(File(Images.extremeSleet).existsSync(), true);
    expect(File(Images.extremeSmoke).existsSync(), true);
    expect(File(Images.extremeSnow).existsSync(), true);
    expect(File(Images.extreme).existsSync(), true);
    expect(File(Images.fahrenheit).existsSync(), true);
    expect(File(Images.fallingStars).existsSync(), true);
    expect(File(Images.flagGaleWarning).existsSync(), true);
    expect(File(Images.flagHurricaneWarning).existsSync(), true);
    expect(File(Images.flagSmallCraftAdvisory).existsSync(), true);
    expect(File(Images.flagStormWarning).existsSync(), true);
    expect(File(Images.fogDay).existsSync(), true);
    expect(File(Images.fogNight).existsSync(), true);
    expect(File(Images.fog).existsSync(), true);
    expect(File(Images.glove).existsSync(), true);
    expect(File(Images.hail).existsSync(), true);
    expect(File(Images.hazeDay).existsSync(), true);
    expect(File(Images.hazeNight).existsSync(), true);
    expect(File(Images.haze).existsSync(), true);
    expect(File(Images.horizon).existsSync(), true);
    expect(File(Images.humidity).existsSync(), true);
    expect(File(Images.hurricane).existsSync(), true);
    expect(File(Images.lightningBolt).existsSync(), true);
    expect(File(Images.mist).existsSync(), true);
    expect(File(Images.moonFirstQuarter).existsSync(), true);
    expect(File(Images.moonFull).existsSync(), true);
    expect(File(Images.moonLastQuarter).existsSync(), true);
    expect(File(Images.moonNew).existsSync(), true);
    expect(File(Images.moonWaningCrescent).existsSync(), true);
    expect(File(Images.moonWaningGibbous).existsSync(), true);
    expect(File(Images.moonWaxingCrescent).existsSync(), true);
    expect(File(Images.moonWaxingGibbous).existsSync(), true);
    expect(File(Images.moonrise).existsSync(), true);
    expect(File(Images.moonset).existsSync(), true);
    expect(File(Images.notAvailable).existsSync(), true);
    expect(File(Images.overcastDayDrizzle).existsSync(), true);
    expect(File(Images.overcastDayFog).existsSync(), true);
    expect(File(Images.overcastDayHail).existsSync(), true);
    expect(File(Images.overcastDayHaze).existsSync(), true);
    expect(File(Images.overcastDayRain).existsSync(), true);
    expect(File(Images.overcastDaySleet).existsSync(), true);
    expect(File(Images.overcastDaySmoke).existsSync(), true);
    expect(File(Images.overcastDaySnow).existsSync(), true);
    expect(File(Images.overcastDay).existsSync(), true);
    expect(File(Images.overcastDrizzle).existsSync(), true);
    expect(File(Images.overcastFog).existsSync(), true);
    expect(File(Images.overcastHail).existsSync(), true);
    expect(File(Images.overcastHaze).existsSync(), true);
    expect(File(Images.overcastNightDrizzle).existsSync(), true);
    expect(File(Images.overcastNightFog).existsSync(), true);
    expect(File(Images.overcastNightHail).existsSync(), true);
    expect(File(Images.overcastNightHaze).existsSync(), true);
    expect(File(Images.overcastNightRain).existsSync(), true);
    expect(File(Images.overcastNightSleet).existsSync(), true);
    expect(File(Images.overcastNightSmoke).existsSync(), true);
    expect(File(Images.overcastNightSnow).existsSync(), true);
    expect(File(Images.overcastNight).existsSync(), true);
    expect(File(Images.overcastRain).existsSync(), true);
    expect(File(Images.overcastSleet).existsSync(), true);
    expect(File(Images.overcastSmoke).existsSync(), true);
    expect(File(Images.overcastSnow).existsSync(), true);
    expect(File(Images.overcast).existsSync(), true);
    expect(File(Images.partlyCloudyDayDrizzle).existsSync(), true);
    expect(File(Images.partlyCloudyDayFog).existsSync(), true);
    expect(File(Images.partlyCloudyDayHail).existsSync(), true);
    expect(File(Images.partlyCloudyDayHaze).existsSync(), true);
    expect(File(Images.partlyCloudyDayRain).existsSync(), true);
    expect(File(Images.partlyCloudyDaySleet).existsSync(), true);
    expect(File(Images.partlyCloudyDaySmoke).existsSync(), true);
    expect(File(Images.partlyCloudyDaySnow).existsSync(), true);
    expect(File(Images.partlyCloudyDay).existsSync(), true);
    expect(File(Images.partlyCloudyNightDrizzle).existsSync(), true);
    expect(File(Images.partlyCloudyNightFog).existsSync(), true);
    expect(File(Images.partlyCloudyNightHail).existsSync(), true);
    expect(File(Images.partlyCloudyNightHaze).existsSync(), true);
    expect(File(Images.partlyCloudyNightRain).existsSync(), true);
    expect(File(Images.partlyCloudyNightSleet).existsSync(), true);
    expect(File(Images.partlyCloudyNightSmoke).existsSync(), true);
    expect(File(Images.partlyCloudyNightSnow).existsSync(), true);
    expect(File(Images.partlyCloudyNight).existsSync(), true);
    expect(File(Images.pollenFlower).existsSync(), true);
    expect(File(Images.pollenGrass).existsSync(), true);
    expect(File(Images.pollenTree).existsSync(), true);
    expect(File(Images.pollen).existsSync(), true);
    expect(File(Images.pressureHighAlt).existsSync(), true);
    expect(File(Images.pressureHigh).existsSync(), true);
    expect(File(Images.pressureLowAlt).existsSync(), true);
    expect(File(Images.pressureLow).existsSync(), true);
    expect(File(Images.rain).existsSync(), true);
    expect(File(Images.rainbowClear).existsSync(), true);
    expect(File(Images.rainbow).existsSync(), true);
    expect(File(Images.raindropMeasure).existsSync(), true);
    expect(File(Images.raindrop).existsSync(), true);
    expect(File(Images.raindrops).existsSync(), true);
    expect(File(Images.sleet).existsSync(), true);
    expect(File(Images.smokeParticles).existsSync(), true);
    expect(File(Images.smoke).existsSync(), true);
    expect(File(Images.snow).existsSync(), true);
    expect(File(Images.snowflake).existsSync(), true);
    expect(File(Images.snowman).existsSync(), true);
    expect(File(Images.solarEclipse).existsSync(), true);
    expect(File(Images.star).existsSync(), true);
    expect(File(Images.starryNight).existsSync(), true);
    expect(File(Images.sunHot).existsSync(), true);
    expect(File(Images.sunrise).existsSync(), true);
    expect(File(Images.sunset).existsSync(), true);
    expect(File(Images.thermometerCelsius).existsSync(), true);
    expect(File(Images.thermometerColder).existsSync(), true);
    expect(File(Images.thermometerFahrenheit).existsSync(), true);
    expect(File(Images.thermometerGlassCelsius).existsSync(), true);
    expect(File(Images.thermometerGlassFahrenheit).existsSync(), true);
    expect(File(Images.thermometerGlass).existsSync(), true);
    expect(File(Images.thermometerMercuryCold).existsSync(), true);
    expect(File(Images.thermometerMercury).existsSync(), true);
    expect(File(Images.thermometerMoon).existsSync(), true);
    expect(File(Images.thermometerRaindrop).existsSync(), true);
    expect(File(Images.thermometerSnow).existsSync(), true);
    expect(File(Images.thermometerSun).existsSync(), true);
    expect(File(Images.thermometerWarmer).existsSync(), true);
    expect(File(Images.thermometerWater).existsSync(), true);
    expect(File(Images.thermometer).existsSync(), true);
    expect(File(Images.thunderstormsDayExtremeRain).existsSync(), true);
    expect(File(Images.thunderstormsDayExtremeSnow).existsSync(), true);
    expect(File(Images.thunderstormsDayExtreme).existsSync(), true);
    expect(File(Images.thunderstormsDayOvercastRain).existsSync(), true);
    expect(File(Images.thunderstormsDayOvercastSnow).existsSync(), true);
    expect(File(Images.thunderstormsDayOvercast).existsSync(), true);
    expect(File(Images.thunderstormsDayRain).existsSync(), true);
    expect(File(Images.thunderstormsDaySnow).existsSync(), true);
    expect(File(Images.thunderstormsDay).existsSync(), true);
    expect(File(Images.thunderstormsExtremeRain).existsSync(), true);
    expect(File(Images.thunderstormsExtremeSnow).existsSync(), true);
    expect(File(Images.thunderstormsExtreme).existsSync(), true);
    expect(File(Images.thunderstormsNightExtremeRain).existsSync(), true);
    expect(File(Images.thunderstormsNightExtremeSnow).existsSync(), true);
    expect(File(Images.thunderstormsNightExtreme).existsSync(), true);
    expect(File(Images.thunderstormsNightOvercastRain).existsSync(), true);
    expect(File(Images.thunderstormsNightOvercastSnow).existsSync(), true);
    expect(File(Images.thunderstormsNightOvercast).existsSync(), true);
    expect(File(Images.thunderstormsNightRain).existsSync(), true);
    expect(File(Images.thunderstormsNightSnow).existsSync(), true);
    expect(File(Images.thunderstormsNight).existsSync(), true);
    expect(File(Images.thunderstormsOvercastRain).existsSync(), true);
    expect(File(Images.thunderstormsOvercastSnow).existsSync(), true);
    expect(File(Images.thunderstormsOvercast).existsSync(), true);
    expect(File(Images.thunderstormsRain).existsSync(), true);
    expect(File(Images.thunderstormsSnow).existsSync(), true);
    expect(File(Images.thunderstorms).existsSync(), true);
    expect(File(Images.tideHigh).existsSync(), true);
    expect(File(Images.tideLow).existsSync(), true);
    expect(File(Images.timeAfternoon).existsSync(), true);
    expect(File(Images.timeEvening).existsSync(), true);
    expect(File(Images.timeLateAfternoon).existsSync(), true);
    expect(File(Images.timeLateEvening).existsSync(), true);
    expect(File(Images.timeLateMorning).existsSync(), true);
    expect(File(Images.timeLateNight).existsSync(), true);
    expect(File(Images.timeMorning).existsSync(), true);
    expect(File(Images.timeNight).existsSync(), true);
    expect(File(Images.tornado).existsSync(), true);
    expect(File(Images.umbrellaWindAlt).existsSync(), true);
    expect(File(Images.umbrellaWind).existsSync(), true);
    expect(File(Images.umbrella).existsSync(), true);
    expect(File(Images.uvIndex1).existsSync(), true);
    expect(File(Images.uvIndex10).existsSync(), true);
    expect(File(Images.uvIndex11).existsSync(), true);
    expect(File(Images.uvIndex2).existsSync(), true);
    expect(File(Images.uvIndex3).existsSync(), true);
    expect(File(Images.uvIndex4).existsSync(), true);
    expect(File(Images.uvIndex5).existsSync(), true);
    expect(File(Images.uvIndex6).existsSync(), true);
    expect(File(Images.uvIndex7).existsSync(), true);
    expect(File(Images.uvIndex8).existsSync(), true);
    expect(File(Images.uvIndex9).existsSync(), true);
    expect(File(Images.uvIndex).existsSync(), true);
    expect(File(Images.windAlert).existsSync(), true);
    expect(File(Images.windBeaufort0).existsSync(), true);
    expect(File(Images.windBeaufort1).existsSync(), true);
    expect(File(Images.windBeaufort10).existsSync(), true);
    expect(File(Images.windBeaufort11).existsSync(), true);
    expect(File(Images.windBeaufort12).existsSync(), true);
    expect(File(Images.windBeaufort2).existsSync(), true);
    expect(File(Images.windBeaufort3).existsSync(), true);
    expect(File(Images.windBeaufort4).existsSync(), true);
    expect(File(Images.windBeaufort5).existsSync(), true);
    expect(File(Images.windBeaufort6).existsSync(), true);
    expect(File(Images.windBeaufort7).existsSync(), true);
    expect(File(Images.windBeaufort8).existsSync(), true);
    expect(File(Images.windBeaufort9).existsSync(), true);
    expect(File(Images.windOffshore).existsSync(), true);
    expect(File(Images.windOnshore).existsSync(), true);
    expect(File(Images.windSnow).existsSync(), true);
    expect(File(Images.wind).existsSync(), true);
    expect(File(Images.windsockWeak).existsSync(), true);
    expect(File(Images.windsock).existsSync(), true);
  });
}
