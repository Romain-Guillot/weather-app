import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/extensions/wmo_weather_code.extension.dart';
import 'package:weatherapp/models/instant_weather_info.model.dart';
import 'package:weatherapp/models/weather.model.dart';
import 'package:weatherapp/modules/home/notifiers/weather.notifier.dart';

final nowWeatherNotifierProvider = ChangeNotifierProvider((ref) {
  final notifier = NowWeatherNotifier(
    logger: XLoggerImpl(context: NowWeatherNotifier),
    weather: ref.watch(weatherNotifierProvider).weather,
  );
  notifier.init();

  return notifier;
});

class NowWeatherNotifier extends ChangeNotifier {
  NowWeatherNotifier({
    required this.logger,
    required this.weather,
  });

  final XLogger logger;
  final ProviderValue<WeatherModel, AppException> weather;

  late final data = ProviderValue<InstantWeatherInfoModel, AppException>(notify: notifyListeners);

  Future<void> init() async {
    logger.d("init");

    final weatherValue = weather.value;
    if (weather.isNotInitialized || weatherValue == null || weatherValue.hourly.time.isEmpty) {
      data.reset();
    } else if (weather.hasError) {
      data.error = weather.error;
    } else {
      final now = DateTime.now().copyWith(minute: 00);
      final formatter = DateFormat('yyyy-MM-ddTH:mm');
      final formattedDate = formatter.format(now);
      final isDateExisting = weatherValue.hourly.time.any((e) => e == formattedDate);
      final index = isDateExisting ? weatherValue.hourly.time.indexOf(formattedDate) : 0;

      data.value = InstantWeatherInfoModel(
        timestamp: now,
        temperature: weatherValue.hourly.temperature_2m[index],
        weatherCode: weatherValue.hourly.weathercode[index]?.code,
        humidity: weatherValue.hourly.relativehumidity_2m[index],
        isDay: weatherValue.hourly.is_day[index] ?? true,
      );
    }
  }
}
