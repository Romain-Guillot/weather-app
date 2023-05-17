import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/errors/call_api_or_throw.dart';
import 'package:weatherapp/core/models/geo_location.model.dart';
import 'package:weatherapp/models/weather.model.dart';
import 'package:weatherapp/modules/home/notifiers/location.weather.notifier.dart';
import 'package:weatherapp/repositories/weather/weather.repository.dart';

final weatherNotifierProvider = ChangeNotifierProvider.autoDispose((ref) {
  final location = ref.watch(locationNotifierProvider).location;

  final notifier = WeatherNotifier(
    logger: XLoggerImpl(context: WeatherNotifier),
    weatherRepository: ref.watch(weatherRepositoryProvider),
    location: location,
  );
  notifier.load();

  return notifier;
});

class WeatherNotifier extends ChangeNotifier {
  WeatherNotifier({
    required this.logger,
    required this.weatherRepository,
    required this.location,
  });

  final XLogger logger;
  final WeatherRepository weatherRepository;
  final GeoLocation location;

  late final weather = ProviderValue<WeatherModel, AppException>(notify: notifyListeners);

  Future<void> load() async {
    logger.d("load");
    try {
      weather.reset();
      weather.value = await callOrThrow(
        () => weatherRepository.retrieve(
          lat: 45.77576274899703,
          lon: 4.885990139695345,
        ),
      );
    } on AppException catch (e) {
      logger.exception('Unable to load weather', e);
      weather.error = e;
    }
  }
}
