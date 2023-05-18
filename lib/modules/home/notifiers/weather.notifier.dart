import 'package:flutter/material.dart';
import 'package:ox_sdk/ox_sdk.dart';
import 'package:weatherapp/core/errors/call_api_or_throw.dart';
import 'package:weatherapp/core/models/geo_location.model.dart';
import 'package:weatherapp/models/weather.model.dart';
import 'package:weatherapp/modules/home/notifiers/location.weather.notifier.dart';
import 'package:weatherapp/repositories/weather/weather.repository.dart';

final weatherNotifierProvider = ChangeNotifierProvider((ref) {
  final notifier = WeatherNotifier(
    logger: XLoggerImpl(context: WeatherNotifier),
    ref: ref,
    weatherRepository: ref.watch(weatherRepositoryProvider),
  );
  notifier.load();

  return notifier;
});

class WeatherNotifier extends ChangeNotifier {
  WeatherNotifier({
    required this.logger,
    required this.ref,
    required this.weatherRepository,
  });

  final XLogger logger;
  final Ref ref;
  final WeatherRepository weatherRepository;

  late final weather = ProviderValue<WeatherModel, AppException>(notify: notifyListeners);

  Future<void> load() async {
    logger.d("load");
    GeoLocation? previousLocation;
    ref.listen(locationNotifierProvider, (_, notifier) async {
      try {
        final location = notifier.location;
        if (location != previousLocation) {
          previousLocation = location;
          weather.reset();
          weather.value = await callOrThrow(
            () => weatherRepository.retrieve(
              lat: location.lat,
              lon: location.lon,
            ),
          );
        }
      } on AppException catch (e) {
        logger.exception('Unable to load weather', e);
        weather.error = e;
      }
    }, fireImmediately: true);
  }

  Future<void> reload() {
    return load();
  }
}
