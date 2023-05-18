import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/enums/weather_code.enum.dart';

part 'instant_weather_info.model.freezed.dart';

@freezed
class InstantWeatherInfoModel with _$InstantWeatherInfoModel {
  factory InstantWeatherInfoModel({
    required DateTime timestamp,
    required double? temperature,
    required WeatherCode? weatherCode,
    required double? humidity,
    required bool isDay,
  }) = _InstantWeatherInfoModel;
}
