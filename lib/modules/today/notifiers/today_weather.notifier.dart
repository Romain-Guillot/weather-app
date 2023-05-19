import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/extensions/wmo_weather_code.extension.dart';
import 'package:weatherapp/models/instant_weather_info.model.dart';
import 'package:weatherapp/models/weather.model.dart';
import 'package:weatherapp/modules/home/notifiers/weather.notifier.dart';

final todayWeatherNotifierProvider = ChangeNotifierProvider((ref) {
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

  int _nowIndex = 0;
  int get nowIndex => _nowIndex;
  set nowIndex(int value) {
    _nowIndex = value;
    notifyListeners();
  }

  Future<void> init() async {
    logger.d("init");

    final weatherValue = weather.value;
    if (weather.hasError) {
      data.error = weather.error;
    } else if (weather.isNotInitialized || weatherValue == null || weatherValue.hourly.time.isEmpty) {
      data.reset();
    } else {
      final now = DateTime.now().copyWith(minute: 00);
      final formatter = DateFormat('yyyy-MM-ddTHH:mm');
      final formattedDate = formatter.format(now);

      final instantWeatherInfoModels = <InstantWeatherInfoModel>[];
      for (final rawTimestamp in weatherValue.hourly.time) {
        final formatter = DateFormat('yyyy-MM-ddTHH:mm');
        final timestamp = formatter.parse(rawTimestamp);
        final index = weatherValue.hourly.time.indexOf(rawTimestamp);

        if (rawTimestamp == formattedDate) {
          _nowIndex = index;
        }

        instantWeatherInfoModels.add(InstantWeatherInfoModel(
          timestamp: timestamp,
          temperature: weatherValue.hourly.temperature2m[index],
          weatherCode: weatherValue.hourly.weathercode[index]?.code,
          humidity: weatherValue.hourly.relativehumidity2m[index],
          isDay: weatherValue.hourly.isDay[index] ?? true,
        ));
      }
      data.value = instantWeatherInfoModels;
    }
  }
}
