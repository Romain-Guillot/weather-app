import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/models/weather.model.dart';
import 'package:weatherapp/modules/home/notifiers/weather.notifier.dart';

final sunsetSunriseNotifierProvider = ChangeNotifierProvider((ref) {
  final notifier = SunsetSunriseNotifier(
    logger: XLoggerImpl(context: SunsetSunriseNotifier),
    weather: ref.watch(weatherNotifierProvider).weather,
  );
  notifier.init();

  return notifier;
});

class SunsetSunriseNotifier extends ChangeNotifier {
  SunsetSunriseNotifier({
    required this.logger,
    required this.weather,
  });

  final XLogger logger;
  final ProviderValue<WeatherModel, AppException> weather;

  TimeOfDay? _sunset;
  TimeOfDay? get sunset => _sunset;
  set sunset(TimeOfDay? value) {
    _sunset = value;
    notifyListeners();
  }

  TimeOfDay? _sunrise;
  TimeOfDay? get sunrise => _sunrise;
  set sunrise(TimeOfDay? value) {
    _sunrise = value;
    notifyListeners();
  }

  Future<void> init() async {
    logger.d("init");

    final weatherValue = weather.value;
    if (weatherValue != null && weatherValue.daily.time.isNotEmpty) {
      final now = DateTime.now().copyWith(minute: 00);
      final formatter = DateFormat('yyyy-MM-dd');
      final formattedDate = formatter.format(now);
      final index = weatherValue.daily.time.indexOf(formattedDate);
      if (index != -1) {
        final sunriseDatetime = weatherValue.daily.sunrise[index];
        if (sunriseDatetime != null) {
          sunrise = TimeOfDay.fromDateTime(sunriseDatetime);
        }

        final sunsetDatetime = weatherValue.daily.sunset[index];
        if (sunsetDatetime != null) {
          sunset = TimeOfDay.fromDateTime(sunsetDatetime);
        }
      }
    }
  }
}
