import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/extensions/wmo_weather_code.extension.dart';
import 'package:weatherapp/models/instant_weather_info.model.dart';
import 'package:weatherapp/models/weather.model.dart';
import 'package:weatherapp/modules/home/notifiers/weather.notifier.dart';

final todayWeatherNotifierProvider = ChangeNotifierProvider.autoDispose((ref) {
  final notifier = TodayWeatherNotifier(
    logger: XLoggerImpl(context: TodayWeatherNotifier),
    weather: ref.watch(weatherNotifierProvider).weather,
  );
  notifier.init();

  return notifier;
});

class TodayWeatherNotifier extends ChangeNotifier {
  TodayWeatherNotifier({
    required this.logger,
    required this.weather,
  });

  final XLogger logger;
  final ProviderValue<WeatherModel, AppException> weather;

  late final data = ProviderValue<List<InstantWeatherInfoModel>, AppException>(notify: notifyListeners);

  Future<void> init() async {
    logger.d("init");

    final weatherValue = weather.value;
    if (weather.isNotInitialized || weatherValue == null || weatherValue.hourly.time.isEmpty) {
      weather.reset();
    } else if (weather.hasError) {
      data.error = weather.error;
    } else {
      final instantWeatherInfoModels = <InstantWeatherInfoModel>[];
      for (final rawTimestamp in weatherValue.hourly.time) {
        final formatter = DateFormat('yyyy-MM-ddTH:m');
        final timestamp = formatter.parse(rawTimestamp);
        final index = weatherValue.hourly.time.indexOf(rawTimestamp);

        instantWeatherInfoModels.add(InstantWeatherInfoModel(
          timestamp: timestamp,
          temperature: weatherValue.hourly.temperature_2m[index],
          weatherCode: weatherValue.hourly.weathercode[index]?.code,
          humidity: weatherValue.hourly.relativehumidity_2m[index],
        ));
      }
      data.value = instantWeatherInfoModels;
    }
  }
}
