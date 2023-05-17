import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/enums/weather_code.enum.dart';

part 'forecast_weather_info.model.freezed.dart';

@freezed
class ForecastWeatherInfoModel with _$ForecastWeatherInfoModel {
  factory ForecastWeatherInfoModel({
    required DateTime timestamp,
    required WeatherCode? weatherCode,
    required double? maxTemperature,
    required double? minTemperature,
    required double? maxUvIndex,
    required double? precipitationSum,
    required double? rainSum,
    required double? snowFallSum,
  }) = _ForecastWeatherInfoModel;
}
