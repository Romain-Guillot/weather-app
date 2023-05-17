import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/extensions/wmo_weather_code.extension.dart';
import 'package:weatherapp/models/forecast_weather_info.model.dart';
import 'package:weatherapp/models/weather.model.dart';
import 'package:weatherapp/modules/home/notifiers/weather.notifier.dart';

final forecastWeatherNotifierProvider = ChangeNotifierProvider.autoDispose((ref) {
  final notifier = ForecastWeatherNotifier(
    logger: XLoggerImpl(context: ForecastWeatherNotifier),
    weather: ref.watch(weatherNotifierProvider).weather,
  );
  notifier.init();

  return notifier;
});

class ForecastWeatherNotifier extends ChangeNotifier {
  ForecastWeatherNotifier({
    required this.logger,
    required this.weather,
  });

  final XLogger logger;
  final ProviderValue<WeatherModel, AppException> weather;

  late final data = ProviderValue<List<ForecastWeatherInfoModel>, AppException>(notify: notifyListeners);

  Future<void> init() async {
    logger.d("init");

    final weatherValue = weather.value;
    if (weather.isNotInitialized || weatherValue == null || weatherValue.hourly.time.isEmpty) {
      weather.reset();
    } else if (weather.hasError) {
      data.error = weather.error;
    } else {
      final instantWeatherInfoModels = <ForecastWeatherInfoModel>[];
      for (final rawTimestamp in weatherValue.daily.time) {
        final formatter = DateFormat('yyyy-MM-dd');
        final timestamp = formatter.parse(rawTimestamp);
        final index = weatherValue.daily.time.indexOf(rawTimestamp);

        instantWeatherInfoModels.add(ForecastWeatherInfoModel(
          timestamp: timestamp,
          maxTemperature: weatherValue.daily.temperature_2m_max[index],
          minTemperature: weatherValue.daily.temperature_2m_min[index],
          maxUvIndex: weatherValue.daily.uv_index_max[index],
          snowFallSum: weatherValue.daily.snowfall_sum[index],
          rainSum: weatherValue.daily.rain_sum[index],
          precipitationSum: weatherValue.daily.precipitation_sum[index],
          weatherCode: weatherValue.daily.weathercode[index]?.code,
        ));
      }
      data.value = instantWeatherInfoModels;
    }
  }
}
